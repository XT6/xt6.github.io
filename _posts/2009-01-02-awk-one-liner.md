---
layout: default
title:  "An AWK One Liner"
date:   2010-01-02 01:00  -0300
categories: old awk unix
---

<p>I&nbsp;have never been much of an AWK fan. In fact I have almost never used it. However, today it did serve me well:</p> <ul><li><span style="font-weight: bold;">The problem:</span>          <ul><li><span style="font-style: italic;"><span id="1217344888782S" style="display: none;">&nbsp;</span><span id="1217344901871S" style="display: none;">&nbsp;</span><span id="1217344900196S" style="display: none;">&nbsp;</span><span id="1217344899754S" style="display: none;">&nbsp;</span><span id="1217344899970S" style="display: none;">&nbsp;</span><span id="1217344899663S" style="display: none;"> </span>Add a semi colon (;) at the end of each line of a text file</span></li></ul></li><li><strong>The solution</strong>:               <ul><li><span style="font-family: courier new;">cat file.txt | awk '{print $0 &quot;;&quot;}'</span></li></ul></li><li><strong>Solution explained</strong>:                  <ul><li>awk executes the script repeatedly for each line of the input file</li><li>$0 represents each complete line of the file</li><li>The matching pattern is empty, so the rule executes always, for each line. Thus the print statement adds the required semicolon</li></ul></li></ul>