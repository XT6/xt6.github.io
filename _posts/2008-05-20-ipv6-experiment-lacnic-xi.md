---
layout: default
title:  "IPv6 Experiment in LACNIC XI"
date:   2008-05-20 -0300
categories: old lacnic ipv6
---

# IPv6 Experiment in LACNIC XI

<p>During <a href="http://www.lacnic.net/sp/eventos/lacnicxi/">LACNIC XI</a> I participated in a great initiative called the <a href="http://www.lacnic.net/sp/eventos/lacnicxi/experimentoIPv6.html"><em>IPv6 Experiment</em></a>. The experiment proposed that during a certain time window, all IPv4 connectivity would be turned off and three challenges would be offered to the participants, namely:</p>
<ol>
<li>Try to access a specific IPv6-accesible page</li>
<li>Try to send an e-mail using IPv6 only</li>
<li>Try to establish a VPN connection over IPv6</li>
</ol>
<p>I grabbed the output of netstat showing only IPv6 connections on my Ubuntu laptop. This was certainly the first time my laptop had seen such a thing!</p>
<p><strong>Fri May 30 10:22:58 UYT 2008</strong></p>
<p><strong>--------------- </strong></p>
<p><strong>Active Internet connections (servers and established) </strong></p>
<p><strong>Proto Recv-Q Send-Q Local Address Foreign Address State PID/Program name </strong></p>
<p><strong>tcp 0 0 127.0.0.1:631 0.0.0.0:* LISTEN 5190/cupsd </strong></p>
<p><strong>tcp 0 0 127.0.0.1:25 0.0.0.0:* LISTEN 8414/exim4 </strong></p>
<p><strong>tcp 0 1 172.16.2.53:58609 207.46.109.73:1863 SYN_SENT 9792/pidgin </strong></p>
<p><strong>tcp 0 1 172.16.2.53:56437 91.189.88.46:80 SYN_SENT 6605/wget </strong></p>
<p><strong>tcp6 0 0 :::22 :::* LISTEN 5125/sshd </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:44670 2001:12fe:1:100::d:5222 ESTABLISHED 9792/pidgin </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:45264 2001:12fe:1:100::4a7:80 ESTABLISHED 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:43022 2001:12fe:1:100::a4:119 ESTABLISHED 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:55724 2001:12fe:1:100::be:143 ESTABLISHED 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:33919 2001:12fe:1:100::be:143 ESTABLISHED 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 1 0 2001:12fe:0:100:2:33896 2001:12fe:1:100::4a7:80 CLOSE_WAIT 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:50170 2001:12fe:1:100::be:143 ESTABLISHED 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:59814 2001:12fe:1:100::d:5050 ESTABLISHED 9792/pidgin </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:33920 2001:12fe:1:100::be:143 ESTABLISHED 8861/thunderbird-bi </strong></p>
<p><strong>tcp6 0 0 2001:12fe:0:100:2:36047 2001:12fe:1:100::48:993 ESTABLISHED 8861/thunderbird-bi </strong></p>

<p>
  ts: 1227715271
</p>

