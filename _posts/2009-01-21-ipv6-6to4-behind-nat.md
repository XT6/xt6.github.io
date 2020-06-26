---
layout: default
title:  "Configurando IPv6 con 6to4 detras de un NAT con IP dinámica"
date:   2009-01-21T13:32:27+00:00
categories: old ipv6 6to4
---

# Configurando IPv6 con 6to4 detras de un NAT con IP dinámica

<a href="{{ "/assets/doc/6to4athome-v2.pdf" | relative_url }}">Bajar slides LACNIC XI aquí</a>

<a href="{{ "/assets/doc/articulo-6to4-linux-v1.pdf" | relative_url }}">Bajar artículo 2008 aquí</a>

<p class="rteleft">6to4 es uno de los varios mecanismos de transicion de IPv4 a IPv6 que han sido propuestos por el IETF. Es un mecanismo de tunelizacion de IPv6 en un payload IPv4 con la caracteristica adicional de que el extremo remoto del tunel puede congurarse automaticamente ya que usa una direccion well-known como extremo remoto. Es facil de congurar y tiene buena performance. Sin embargo, presenta algunos desaf&iacute;os a la hora de poderlo utilizar de manera estable detras de un NAT con IP publica variable, como es el caso de la inmensa mayoria de servicios ADSL hogarenos.</p><p class="rteleft"><br />En este articulo presento un script que automatiza la conguracion y mantiene operativa la conexion IPv6 utilizando 6to4 utilizando un PC Linux como router IPv6.</p><p class="rteleft"><strong>Nota:</strong> Este trabajo es un <em>work in progress</em>, no puede considerarse completo todav&iacute;a, aunque el script que se adjunta funciona bien en Ubuntu y Debian.</p>

<hr>

<p>
  ts: 1232544747
</p>