#CS126 LAB 9
#Debbie Lane 2/22/15
#salt state that provisions your configured /etc/exports
  nfs-config:
    file.managed:                              #Download files from the master and place on target minion
    - name: /etc/exports                       #Name of file to manage
    - source: salt://files/exports             #source file to download to the minion
#    -  require:
#      pkg:nfs-utils
