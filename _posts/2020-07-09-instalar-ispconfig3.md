---
layout: default
title:  "Como instalar ISPCONFIG3 usando Ansible"
date:   2020-06-25 00:16:25 -0300
categories: sysadmin ispconfig3 shared_hosting
---

# Instalación de ISPCONFIG3

## Introducción

Instalar el ISPCONFIG3 ("el cPanel de los pobres") usando un rol tomado de ansible-galaxy mas customizaciones adicionales.

ISPCONFIG3 es una herramienta que permite gestionar fácilmente múltiples sitios web y dominios de correo electrónico en un conjunto de servidores. Al igual que cPanel el objetivo es vender o proveer el servicio de hosting compartido.

Maneja el concepto de "Cliente" donde cada cliente puede gestionar sus dominios, sitios, cuentas de correo, etc.

### Referencias y reconocimientos

- El ISPCONFIG tiene su página web en [ISPCONFIG](https://www.ispconfig.org/)
- El rol de Ansible original se encuentra en: [GitHub Inoxio](https://github.com/inoxio/ansible-role-ispconfig3) 
- Las instrucciones que se implementan en el rol de Ansible están en [HowtoForge, The Perfect Server](https://www.howtoforge.com/tutorial/perfect-server-ubuntu-18.04-with-apache-php-myqsl-pureftpd-bind-postfix-doveot-and-ispconfig/)

Finalmente, un agradecimiento a Ariel Weher por dirigirme hacia este software en primer lugar y por compartir sus conocimientos conmigo.

## Pasos

1. instalar el rol tomado de ansible galaxy

   Crear un directorio para trabajar en el rol:

   ```shell
   mkdir ispconfig3_install
   cd ispconfig3_install
   ```

   ```shell
   ansible-galaxy install --roles-path . inoxio.ispconfig3
   ```

   Este comando instala el rol en el directorio acutal (--roles-path .). No instala un site.yml, ya que eso depende de todo el entorno que queremos armar.

2. Crear el site.yml, algo como lo que sigue:

   ```yaml
   ---
   # This playbook deploys an ISPCONFIG install
   #
   # (c) CarlosM, based on previous example by juancarlos@lacnic.net
   # v1 20200708
   # ISPCONFIG specifics, https://github.com/inoxio/ansible-role-ispconfig3
   
   - name: Instala el ISPCONFIG3
     hosts: all
     roles:
       - users_and_packages
       - inoxio.ispconfig3
   
   ```

  

3. Configurar las variables del rol:

   Editar el archivo **inoxio.ispconfig3/vars/main.yml**

   ```yaml
   ---
   # vars file for inoxio.ispconfig3
   ispconfig_version: '3.1.14p2'
   ispconfig_patch: '3.1'
   ispconfig_patch_version: '2.11'
   php_version: '7.2'
   jailkit_version: '2.20'
   
   mail_admin_email: email@your-company.com
   mail_base_domain: your-company.com
   
   ispconfig_hostname: ispconfig.your-company.com
   ispconfig_admin_password: cocoliso123
   
   roundcube_hostname: mail.your-company.com
   roundcube_admin_password: admin
   
   phpmyadmin_hostname: localhost
   
   # Quota
   quota_mounts:
   ```

   

## Problemas encontrados

En las instancias de nube donde probé este rol de Ansible, la instalación del filesystem con "quota" falla porque los módulos de kernel no se instalan hasta que se complete el primer reboot de la VM.

El plan es introducir un rol adicional de Ansible para ejecutar "post primer reboot" donde se habiliten las Quotas y se haga alguna configuración adicional.


## Repo Github

TBW**
