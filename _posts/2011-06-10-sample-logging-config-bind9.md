---
layout: default
title:  "Sample Logging Configuration for BIND9"
date:   2011-06-10T01:09:47+00:00
categories: old dns bind9 logging
---

# Sample Logging Configuration for BIND9

<p>BIND 9.x logging configuration *is a pain*. Although extremely powerful, it makes it unnecessarily difficult to just configure a simple logging scheme for a few messages.</p>
<p>Below you can find a clear configuration snippets to quicklyimplement logging configuration for BIND9. Logging configuration in BIND is, to me, quite obscure and unnecessarily complicated. This sample can be cut &amp; pasted in named.conf (or named.conf.options in Debian / Ubuntu variants). The basis for this configuration was in [<a href="http://www.zytrax.com/books/dns/ch7/logging.html">http://www.zytrax.com/books/dns/ch7/logging.html</a>]</p>

<p>**NEW**: configuration snippet now hosted <a href="https://gist.github.com/carlosm3011/b0dcd0082810f3b983b2670a8f911349">in a GitHub gist.</a></p>

<hr>
<script src="https://gist.github.com/carlosm3011/b0dcd0082810f3b983b2670a8f911349.js"></script>
<hr>

<p><u><strong>Old configuration for reference purposes only. Not maintained.</strong></u></p>
<p>logging{</p>
<div> channel simple_log {</div>
<div> file "/var/log/named/bind.log" versions 3 size 5m;</div>
<div> severity warning;</div>
<div> print-time yes;</div>
<div> print-severity yes;</div>
<div> print-category yes;</div>
<div> };</div>
<div> channel queries_log {</div>
<div> file "/var/log/named/queries.log" versions 3 size 5m;</div>
<div> severity debug;</div>
<div> print-time yes;</div>
<div> print-severity yes;</div>
<div> print-category yes;</div>
<div> };</div>
<div> category default{</div>
<div> simple_log;</div>
<div> };</div>
<div> category queries{</div>
<div> queries_log;</div>
<div> };</div>
<div>};</div>

<hr>

<p>
  ts: 2011-06-10T01:09:47+00:00
</p>