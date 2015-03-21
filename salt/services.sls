webserver_stuff:                # ID declaration
  pkg:                 #state declaration
    - installed         # function declaration
    - pkgs:         # function declaration
      - httpd
      - mysql
      - php
      - php-mysql
      - crypto-utils
      - httpd-manual
      - mod_perl
      - mod_ssl
      - mod_wsgi
      - webalizer
NFS_stuff:
  pkg:
    - installed
    - pkgs:
      - nfs-utils
      - nfs-utils-lib
      - rpcbind
samba_stuff:
  pkg:
    - installed
    - pkgs:
      - samba
      - samba-client
      - cifs-utils
