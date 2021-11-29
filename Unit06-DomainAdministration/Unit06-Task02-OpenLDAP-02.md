---
title: \[OpenLDAP\] - OpenLDAP Installation
subtitle: "Unit 06"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [SMX, SOX]
titlepage: true,
page-background: "../rsrc/backgrounds/background-senia.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title-senia.pdf"
---

# Task: Join the Domain

In this task, we are going to join the domain the Ubuntu System to the Domain. 

In this configuration, the users that we will create at our OpenLDAP Server, will be able to login as a *local* users 
in the machines that we would configure as OpenLDAP Clients.  

## Requeriments:

- OpenLDAP Server Installed and configured on the Ubuntu Server Machine (**ubuntusrv.smx2021.net**)
- Systems Updated 
- DNS Resolution between machines (using *bind9*).


## Some files and logs

In our sysadmin works exists a lot of *commonplaces*, files and situations that 
if not are exactly the same, seems a *deja-vu*. 

We can use several files in order to test if the services are up and running.

Some examples:

- `/var/log/syslog`
- `/var/log/sssd/sssd.log`
- `/var/log/auth.log`


Useful Commands:

- `tail -f /var/log/syslog`
- `ping`
- `getent passwd`
- `systemctl [restart|start|stop] service`

![](./imgs/goblin-wizard.png)

\newpage

## LDAP Client installation

Software that must be installed in the **Client** Machine:

  Packages
  -------------
  libnss-ldap
  libpam-ldap
  ldap-utils

Some parameters

  Params:               Value
  --------------------- -------------------------------------------
  ldapi                 `ldapi:\\ubuntusrv.smx2021.net`
  distinguished-name    `dc=ubuntusrv,dc=smx2021,dc=net`
  ldap-version          `3`
  Root Database Admin   `Yes`
  LDAP Database Login   `No`
  LDAP Account Root     `cn=admin,dc=ubuntusrv,dc=smx2021,dc=net`
  LDAP Pass             `Lin4dm1n`


Some images:

![](./imgs/lin-join-ldap-02.png)

![](./imgs/lin-join-ldap-03.png)

![](./imgs/lin-join-ldap-04.png)

\newpage

## LDAP & TLS

Follow the steps described in this guide and configure LDAP to use TLS:

[<https://ubuntu.com/server/docs/service-ldap-with-tls>](https://ubuntu.com/server/docs/service-ldap-with-tls)

When it works...please continue with the task!

![](./imgs/goblin-wizard.png)

## SSSD - Installation

**SSSD** is the *System Security Services Daemon*.

It will allow us to configure different mechanisms of
security that will provide us with access to
Users / Groups / Passwords ...

The first that we are going to configure is the LDAP that we have configured in the
previous practice.

Practice assumes that you can *resolve by name* the server.

`ubuntusrv.smx2021.net`

We need to start with the installation at the *client* the next packages:

`sssd libpam-sss libnss-sss`

## SSSD - Configuration

Once the SSSD service is installed it does **not provide any files** for
default, so we will create it where indicated:

- `/etc/sssd/sssd.conf`

It is an `inifile` file like the ones we saw in Samba.

The following sections must to be configured:

\newpage

``` {.inifile}
[sssd]
services = nss, pam, ifp
config_file_version = 2
domains = smx2021.net

[nss]
filter_groups = root
filter_users = root
reconnection_retries = 3

[domain/smx2021.net]
ldap_id_use_start_tls = True
cache_credentials = True
ldap_search_base = dc=ubuntusrv, dc=smx2021,dc=net
id_provider = ldap
debug_level = 3
auth_provider = ldap
chpass_provider = ldap
access_provider = ldap
ldap_schema = rfc2307
ldap_uri = ldap://ubuntusrv.smx2021.net
ldap_default_bind_dn = cn=admin,dc=ubuntusrv,dc=smx2021,dc=net
ldap_id_use_start_tls = true
ldap_default_authtok = Lin4dm1n
ldap_tls_reqcert = demand
ldap_tls_cacert = /etc/ssl/certs/ldapcacert.crt
ldap_tls_cacertdir = /etc/ssl/certs
ldap_search_timeout = 50
ldap_network_timeout = 60
ldap_access_order = filter
ldap_access_filter = (objectClass=posixAccount)
ldap_user_search_base = cn=goblins,dc=ubuntusrv,dc=smx2021,dc=net
ldap_user_object_class = inetOrgPerson
ldap_user_gecos = cn
enumerate = True
debug_level = 0x3ff0
```

## Customization

Adapt all the values that must be changed.

-   `man sssd.conf`
-   `man sssd-ldap`

# OpenLDAP Server as a CA in the Client


SSSD only works if we are using a secure communication channel (TLS).

So we must have our LDAP Server configured, we already have it with (Previous guide).

The steps outlined now need to be adapted to fit your configuration.


## Download the CA Certificate to from the Server
--------------------------------------------------

You can use the next command (is a *one-liner*).

``` {.shell}
openssl s_client -connect ubuntusrv.smx2021.net:636 -showcerts < /dev/null 
        | openssl x509 -text | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'
```

If the Server is listening STARTTLS at the 389 port (via tcp or udp), the command must be this:

``` {.shell}
openssl s_client -connect ubuntusrv.smx2021.net:389 -starttls ldap -showcerts < /dev/null 
        | openssl x509 -text | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'
```

You must copy the Certificate fragment and store it at the PATH that you indicated in your own *sssd.conf*


Validate the Certificate:

``` {.shell}
openssl s_client -connect ubuntusrv.smx2021.net:389 -CAfile /etc/ssl/certs/ldapcacert.crt
```

The result must be something similar at:

-   `Verification: OK`
-   `Verify return code: 0 (ok)`

Now at the file `/etc/ldap/ldap.conf` set the `TLS_CACERT` to the PATH of the CA Certificate that we just created.

## Permisos en SSSD

The permissions of the `/etc/sssd/` (files and subfolders) must be :

- Owner : root:root
- Permissions: 0600


And reboot the sssd service.

-   `systemctl restart sssd`

And the if the Service are OK and enable it at the Startup:

-   `systemctl status sssd`
-   `systemctl enable sssd`

## pam-mkhomedir


We are almost finished (if everything is working \^\_\^).

Now we are going to enable the PAM module that auto-generates the
`HOME Directory` of users upon login (if it does not exist).

Edit the file:

`/etc/pam.d/common-session`

And under the line:

``` {.shell}
session optional pam_sss.so
```

Write:

``` {.shell}
session required        pam_mkhomedir.so skel=/etc/skel/ umask=0022
```

Save and exit (:wq).

## Comprobaciones

Test if the user *goblin01* in the output of the command:

`getent passwd goblin01`

When the user *appears*, the user will be able to login at our system. You can test it, with *ssh* or in another **tty**.


\newpage

## Tasks:


### Task 01

Cread 4 usuarios más (goblin02,goblin03,goblin04,goblin05).

Tarea 02
--------

Realizad un SCRIPT de inicio de Sesión que si el usuario pertenece a la
`cn=goblins` monte un directorio NFS desde el servidor. Para ello
tendréis que :

-   Configurar el servicio NFS en el servidor para que exporte:
    `/srv/tropas`. (Por Nombre y no por IP).
-   Crear el script en el cliente para que compruebe la pertenencia a
    ese `cn`.
-   Hacer que el script se ejecute cuando el usuario inicie sesión.

A los 5 usuarios `goblin0*` debe aparecerles en su carpeta personal una
carpeta compartida por NFS que esté en el servidor : (`/srv/tropas`). El
punto de montaje en el cliente ha de ser:

-   `$HOME/tropas/`

El Script debe (indicando en `syslog` si tiene éxito o no):

-   Comprobar que somos un usuario de LDAP.
-   Comprobar que estamos en el `cn=goblins`.
-   Comprobar que `$HOME/tropas` existe y es un directorio, si no existe
    crearlo.
-   Montar la carpeta exportada desde el servidor.

Tarea 03 (Opcional)
-------------------

Haz que el servidor sea cliente de LDAP para la validación de usuarios a
nivel local y establece permisos \"extendidos\" sobre las carpetas
exportadas (`/srv/tropas/`) donde se pueda comprobar que efectivamente
el usuario `local` y el `remoto` son el mismo objeto de seguridad y se
les pueden aplicar las mismas reglas.

![](./imgs/goblin-sneaky.png)
