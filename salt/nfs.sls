#CS126 LAB FINAL
#Debbie Lane 3/20/15
#Create a salt state that provisions your exports file to your minion 
#
/etc/exports:
  file.managed:
#    - name: /etc/exports        #Name of file to manage
    - source: salt://files/exports   #Source file to download to the minion
nfs:
  service:      #Make sure the nfs service is running and
    - running
    - enable: True        #configured to start at boot
    - watch:              #Restart the service if there are
      - file: /etc/exports     #changes to the exports file
