---
layout: default
title:  "Hibernate and Annotations"
date:   2009-01-04 -0300
categories: old java programming
---

<p><h3 class="post-title">Hibernate y <em>Annotations</em></h3> 	                    <p>&nbsp;</p>La forma tradicional o cl&aacute;sica de usar Hibernate hace que debamos mantener varios archivos XML con diferente informaci&oacute;n relevante a los objetos que queremos persistir, incluyendo que campos queremos persistir, correspondencia campos &lt;-&gt; tablas e informacion de conexi&oacute;n a la base de datos.<br /><br />Cada vez que hay un cambio en la aplicaci&oacute;n, hay que hacer mantenimiento de:<br /><ul><li>Los POJO's (las clases Java)</li><li>La propia estructura de la base de datos</li><li>Los archivos XML que establecen las correspondencias</li></ul>Esto no solo parece, sino que es, mucho trabajo.<br /><br /><span style="font-weight: bold; font-style: italic;">Annotations</span><br /><br />Ac&aacute; entran en juego las Java Annotations. Si agregamos a nuestra aplicacion el paquete Hibernate Annotations tenemos a nuestro alcance una forma mucho mas sencilla de mantener nuestra aplicaci&oacute;n.<br /><br />Las <span style="font-weight: bold;">annotations</span> son marcas que compienzan con &quot;@&quot; que se agregan antes de las declaraciones de clases o campos. Con estas annotations podemos marcar que campos son persistentes, que campos son claves primarias y si queremos, como se establece la correspondencia entre tablas y campos.<br /><br />Annotations es compatible con el paquete <span style="font-style: italic;">javax.persistence</span> y lo bueno de esto es que por ejemplo el Netbeans permite generar clases anotadas directamente desde la estructura de la base de datos.<br /><br /><span style="font-weight: bold;">Compatibilidad</span><br /><br />Hibernate Annotations es independiente del IDE que estemos usando (a diferencia de mi m&eacute;todo anterior de trabajo que depend&iacute;a fuertemente del plugin para Eclipse).<br /><br />Las Annotations en Java est&aacute;n disponibles desde Java 5 en adelante.</p>