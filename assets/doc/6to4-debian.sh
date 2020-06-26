#! /bin/sh
# /etc/init.d/6to4
###############################################################################
# 6to4-linux-debian.sh : Script to start / stop 6to4 IPv6
# routing with provisions for a "behind dynamic ip w/NAT"
# setup and interoperation with radvd router advertising daemon.
# Version 0.2
#
# (c) Carlos M. Martinez-Cagnazzo, 12-dec-2008
# 
# Changelog:
# Version 0.3 (20081229) : added start, stop, restart functions
#                          Flush is necessary for correct restart
#                          Adds list of neighbors to status
# Version 0.2 (20081212) :	first "usable" version, converted to "init"
#                               script format
###############################################################################

# Some things that run always
touch /var/lock/6to4
ipfile="/var/tmp/ipv4.txt"

# implements startup of 6to4
start() {
	# Check if there is old information about public IPv4 addr available
	if [ -f $ipfile ]; then
		ipv4_last=$(cat /tmp/ip.txt)
	fi
	# Need to get my ip automatically. I use whatismyip.com's automation page
	wget --output-document=$ipfile http://whatismyip.com/automation/n09230945.asp
	ipv4_int="192.168.1.10"
	ipv4_cur=$(cat $ipfile)
	ipv6=$(printf "2002:%02x%02x:%02x%02x::1" $(echo $ipv4_cur | tr "." " "))

	# beware: the "ffff" part must be coherent with the settings in /etc/raddv.conf
	lan_prefix=$(printf "2002:%02x%02x:%02x%02x:ffff::/64" $(echo $ipv4_cur | tr "." " "))    
	eth0_ipv6=$(printf "2002:%02x%02x:%02x%02x:ffff::1/64" $(echo $ipv4_cur | tr "." " "))    
	
	# display status
	echo My PUBLIC IPv4 address is $ipv4_cur
	echo My GLOBAL IPv6 address is $ipv6
	echo My LAN PREFIX is $lan_prefix
	# echo Configuring...
	ip tunnel add tun6to4 mode sit ttl 200 remote any local $ipv4_int
	ip link set dev tun6to4 up
	ip -6 addr add $ipv6/48 dev tun6to4
	ip -6 addr add $eth0_ipv6 dev eth0
	ip -4 addr add $ipv4_cur dev tun6to4
	ip -6 route add 2000::/3 via ::192.88.99.1 dev tun6to4 metric 1
	# ip -6 route add ::/0 via ::192.88.99.1 dev tun6to4 metric 1 
	# Make raddvd's advertised prefix routeable through eth0
	ip -6 route add $lan_prefix dev eth0 metric 1	
	# Restart RADVD if necessary
	if [ -x /etc/init.d/radvd ]; then
		/etc/init.d/radvd restart
	fi
	# log the realized operation 
	logger "IPv6 using 6to4 configured (ipv4_pub: $ipv4_cur, ipv6: $ipv6)"
}

# stops 6to4 and flushes all routes and addresses
stop() {
	/sbin/ip -6 route flush dev tun6to4
	/sbin/ip -6 route flush scope global
	/sbin/ip -6 addr flush scope global
	/sbin/ip link set dev tun6to4 down
	/sbin/ip tunnel del tun6to4
}

status() {
    echo "IPV6 6TO4 STATUS"
    echo "--"
	echo "Addresses"
	echo "---------"
	/sbin/ip -6 addr show
	echo " "
	echo "Routes"
	echo "------"
	/sbin/ip -6 route show
	echo "Neighbors"
	echo "------"
	/sbin/ip -6 neigh show	
}

restart() {
	stop
	start
}

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting script 6to4 "
	start
    ;;
  stop)
    echo "Stopping script 6to4"
	stop
   ;;
  status)
	status
    ;;	
  restart)
	restart
	;;
  *)
    echo "Usage: /etc/init.d/6to4 {start|stop|restart|status}"
    exit 1
    ;;
esac

exit 0

