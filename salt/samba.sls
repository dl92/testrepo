#CS126 LAB FINAL
#Debbie Lane 3/20/15
#Create a salt state that provisions your fstab file to your minion 
#
samba:
  file.managed:                             #Download files from the Master to the Minion
    - name: /etc/samba/smb.conf             #Name of file to manage
    - source: salt://files/smb.conf         #Source file to download to the minion
