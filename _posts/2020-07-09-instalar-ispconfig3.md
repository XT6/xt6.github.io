# Instalación de ISPCONFIG3



## Objetivo

Instalar el ISPCONFIG3 ("el cPanel de los pobres") usando un rol tomado de ansible-galaxy



## Pasos



1. instalar el rol tomado de ansible galaxy

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

   

4. 