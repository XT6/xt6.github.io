---
layout: default
title:  "Configuring RNDC for Fine-Grained BIND9 Control"
date:   2011-03-23T20:05:49+00:00
categories: old dns bind9
---

# Configuring RNDC for Fine-Grained BIND9 Control

<p>RNDC is an extremely useful utility bundled with BIND that allows controlling the DNS server in a fine-grained way. So instead of reloading the whole server to add a single record, you can issue a "rndc reload myzone.com" command and only that zone will be loaded without restarting the server.<br /><br /><strong>1. Generate a cryptographic key</strong><br /><br />First we'll generate a crypto key that will be used to access the control channel of BIND:<br /><br />dnssec-keygen -a HMAC-MD5 -b256 \<br /> -n HOST rndc<br /><br />This creates a file named "Krndc.+157+62322" (the numbers will depend on the generated key)<br /><br /><strong>2. Create a configuration file for rndc</strong><br /><br />This file will not be accesed by BIND, only by rndc. It can be placed anywhere within the system.<br /><br />---- cut here ----<br />key "rndckey" {<br /> algorithm "hmac-md5";<br /> // this "secret" is the same crypto material found in the <br /> secret "BxUpUZLIymdkMsfvdrTnudVwefhYEGBbhfRMgAgR81M=";<br />};<br /><br />options {<br /> default-key "rndckey";<br /> default-server 127.0.0.1;<br /> default-port 953;<br />};<br />---- cut here ----<br /><br /> &bull; The name of the key ("rndckey") is arbitrary<br /> &bull; Content of the "secret" statement is obtained from private key file generated in step 1.<br /><br /><strong>3. Configure BIND to accept rndc commands</strong><br /><br />Edit named.conf and include the following statements:<br /><br />---- cut here ----<br /># RNDC<br />key "rndckey" {<br /> algorithm "hmac-md5";<br /> secret "BxUpUZLIymdkMsfvdrTnudVwefhYEGBbhfRMgAgR81M=";<br />};<br /><br />controls {<br /> inet 127.0.0.1 allow { 127.0.0.1; } keys { rndckey; };<br />};<br />---- cut here ----<br /><br /><strong>4. Restart BIND and test "rndc"</strong><br /><br />[root@vm3-lab2 var]# /etc/init.d/bind restart<br /><br />[root@vm3-lab2 var]# /opt/bind/sbin/rndc -c /path/to/rndc.conf -s localhost status<br />version: 9.7.2-P3<br />number of zones: 30<br />debug level: 0<br />xfers running: 0<br />xfers deferred: 0<br />soa queries in progress: 0<br />query logging is ON<br />recursive clients: 0/0/1000<br />tcp clients: 0/100<br />server is up and running<br />&nbsp;</p>

<hr>

<p>
  ts: 1300910749
</p>