---
layout: default
title:  "Mounting DD Images for Forensic Analysis"
date:   2010-05-04 -0300
categories: dummy
---

## Mounting DD Images for Forensic Analysis

<p>I&nbsp;have created disk images for forensic purposes (artifact analysis and such). The questions is:&nbsp;given a "dd" image created from the whole, raw device, how do I&nbsp;mount individual partitions?</p>
<p>Let's say that the device I&nbsp;want to analyze resides in /dev/sdc, and that I&nbsp;have some large storage mounted under /mnt/largedisk and that I&nbsp;have cread the forensic image using the following command:</p>
<pre># dd if=/dev/sdc of=/mnt/largedisc/mycopy.dd bs=512
</pre>
<p>When this command ends (it can take up to several hours depending on the size of the disk being imaged), I will have a file that is an exact byte-bye image of the raw device.</p>
<p>In my case, /dev/sdc had two partitions. I was able to mount them using the following command:</p>
<pre># mount -o ro,loop,offset=32256 /mnt/largedisc/mycopy.dd /mnt/dir1
</pre>
<p>I am using the loop device and the flag "ro" makes sure that the mount will be read-only (a must when doing forensics). The only difficulty here is the number "32256".&nbsp;How did I&nbsp;get it? Simple:&nbsp;use "fdisk" to view the partition layout and use the "start cylinder" value (in my case 63) multiplied by the sector size (usually 512 bytes), and use the result as offset.</p>
<p>How do I use fdisk on a dd image?&nbsp;Simple also:</p>
<pre># sfdisk -l -uS /mnt/largedisc/mycopy.dd
</pre>
<p>Be careful when copying the large numbers that will result when mounting the rest of the partitions.</p>

<hr>

<p>
  ts: 1273009233
</p>