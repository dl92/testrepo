#CS126 Final Lab
#Debbie Lane
#3/20/15
#
#Create a salt state called apache.sls that 
#provisions the httpd.conf and welcome.conf files 
#
/etc/httpd/conf/httpd.conf:
  file.managed:
    - source:
      - salt://files/httpd.conf
    - user: root
    - group: root
    - mode: 644

/etc/httpd/conf.d/welcome.conf:
  file.managed:
    - source:
      - salt://files/welcome.conf
