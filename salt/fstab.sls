#CS126 LAB FINAL
#Debbie Lane 3/20/15
#Create a salt state that provisions your fstab file to your minion 
#
fstab:
  file.managed:
    - name: /etc/fstab             #Name of file to manage
    - source: salt://files/fstab   #Source file to download to the minion
