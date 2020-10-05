---
layout: default
title:  "A Survey on Languages, Enumerations and Other Tools used for Security Information Communication and Sharing"
date:   2008-10-20T20:14:59+00:00
categories: old research security 
---

# A Survey on Languages, Enumerations and Other Tools used for Security Information Communication and Sharing

<a href="{{ "/assets/doc/lacnicxi-survey-lang-enum-05.pdf" | relative_url }}">LACNIC XI Slides Here</a>

<p><strong>A Survey on Languages, Enumerations and Other Tools used for Security Information Communication and Sharing</strong></p>
<p>Gustavo Betarte, Alejandro Blanco, Marcelo Rodr&iacute;guez</p>
<p>Grupo de Seguridad Inform&aacute;tica, Facultad de Ingenier&iacute;a, Universidad de la Rep&uacute;blica</p>
<p>Uruguay</p>
<p>{gustun, ablanco, <a href="mailto:marcelor%7D@fing.edu.uy">marcelor}@fing.edu.uy</a></p>
<p>Carlos Mart&iacute;nez-Cagnazzo, Eduardo Carozo</p>
<p>CSIRT-Antel, Administracion Nacional de Telecomunicaciones</p>
<p>Uruguay</p>
<p>{carlos.martinez, <a href="mailto:eduardo.carozo%7D@csirt-antel.com.uy">eduardo.carozo}@csirt-antel.com.uy</a></p>
<ol>
<li>
<p>Abstract</p>
</li>
</ol>
<p>All areas of knowledge related to computer, network and information security have been the subject of enormous interest in the last years. This interest comes not only from the academic community but from the general public as well, since many high-profile incidents involving data theft, identity theft and denial-of-service situations have grabbed headlines and threatened the confidence placed by the common user on the Internet as a whole.</p>
<p>Computer Security Incident Response Teams (CSIRTs) [BRO03] are widely regarded as a fundamental tool in the computer and information security landscape. These teams provide a dedicated and systematic look at security incidents. Fundamental in this model is the collaboration between different incident response teams.</p>
<p>Well-specified communication and specification languages help interacting teams share information without ambiguity. The OVAL ([MIT06],[OVA08]) (<em>Open Vulnerability and Assessment Language</em>) language for example standardizes the three main steps of the assessment process: representing configuration information of systems for testing; analyzing the system for the presence of the specified machine state (vulnerability, configuration, patch state, etc.); and reporting the results of this assessment.</p>
<p>There are several well-established initiatives that leverage processes for the communication and sharing of security-related data. CVE (<em>Common Vulnerabilities and Exposures</em>)[CVE08] , for instance, is a list of information security vulnerabilities and exposures that aims to provide common names for publicly known problems. The goal of CVE is to make it easier to share data across separate vulnerability capabilities (tools, repositories, and services) with this "common enumeration&rdquo;. The CME (<em>Common Malware Enumeration)</em> [CME08] initiative, which is also managed and maintained by The MITRE Corporation, aims to provide single, common identifiers to new virus threats (i.e., malware) and to the most prevalent virus threats.</p>
<p>This work will present an introductory view to well-specified languages and enumerations used for communicating and sharing security-related data and information, including OVAL, CVE, CME and other related initiatives ([IOD08] , [IET08] ) and will motivate the role they may play in the environment of a operational CSIRT.</p>
<ol start="2">
<li>
<p>References</p>
</li>
</ol>
<p>[BRO03] Handbook for Computer Security Incident Response Teams (CSIRTs). MJW Brown, D Stikvoort, KP Kossakowski. 2nd Edition: April 2003.</p>
<p>[MIT06] An Introduction to the OVAL Language. [en l&iacute;nea].</p>
<p>&lt;<a href="http://oval.mitre.org/oval/documents/docs-06/an_introduction_to_the_oval_language.pdf">http://oval.mitre.org/oval/documents/docs-06/an_introduction_to_the_oval_language.pdf</a>&gt; <a href="http://oval.mitre.org/oval/about/index.html"> [Consulta: 14 de marzo</a><a href="http://oval.mitre.org/oval/about/index.html"> de 2008]</a></p>
<p>[OVA08] Open Vulnerability and Assessment Language (OVAL), MITRE Corporation [en l&iacute;nea].</p>
<p><a href="http://oval.mitre.org/oval/about/index.html">&lt;</a><a href="http://oval.mitre.org/oval/about/index.html">http://oval.mitre.org/oval/about/index.html</a><a href="http://oval.mitre.org/oval/about/index.html">&gt; [Consulta: 14 de marzo</a><a href="http://oval.mitre.org/oval/about/index.html"> de 2008]</a></p>
<p>[CVE08] Common Vulnerabilities and Exposures (CVE), MITRE Corporation [en l&iacute;nea].</p>
<p><a href="http://cve.mitre.org/">&lt;</a><a href="http://cve.mitre.org/">http://cve.mitre.org/</a><a href="http://cve.mitre.org/">&gt; </a><a href="http://oval.mitre.org/oval/about/index.html"> [Consulta: 14 de marzo</a><a href="http://oval.mitre.org/oval/about/index.html"> de 2008]</a></p>
<p>[CME08] Common Malware Enumeration (CME),MITRE Corporation [en l&iacute;nea].</p>
<p>&lt; <a href="http://cme.mitre.org/">http://cme.mitre.org/</a>&gt; <a href="http://oval.mitre.org/oval/about/index.html">[Consulta: 14 de marzo</a><a href="http://oval.mitre.org/oval/about/index.html"> de 2008]</a></p>
<p>[IOD08] Incident Object Description and Exchange Format Working Group (IODEF) [en l&iacute;nea].</p>
<p><a href="http://www.terena.org/activities/tf-csirt/iodef/">&lt;</a><a href="http://www.terena.org/activities/tf-csirt/iodef/">http://www.terena.org/activities/tf-csirt/iodef/</a><a href="http://www.terena.org/activities/tf-csirt/iodef/">&gt; </a><a href="http://oval.mitre.org/oval/about/index.html">[Consulta: 14 de marzo</a><a href="http://oval.mitre.org/oval/about/index.html"> de 2008]</a></p>
<p>[IET08] IETF Extended Incident Handling (INCH) Working Group [en l&iacute;nea].</p>
<p><a href="http://www.cert.org/ietf/inch/inch.html">&lt;</a><a href="http://www.cert.org/ietf/inch/inch.html">http://www.cert.org/ietf/inch/inch.html</a><a href="http://www.cert.org/ietf/inch/inch.html">&gt; </a><a href="http://oval.mitre.org/oval/about/index.html">[Consulta: 14 de marzo</a><a href="http://oval.mitre.org/oval/about/index.html"> de 2008]</a></p>

<hr>

<p>
  ts: 1224533699
</p>