#CS126 LAB 9
#Debbie Lane 2/22/15
#salt state the ensures that sshd is on and provisions the authorized_keys file
#ensure the service is started, service sshd restart or service sshd stop/start
sshd:
  service.running:                    #Make sure the sshd service is running and
    - enable: True                    #configured to start at boot

sshd-config:
    file.managed:                              #Download files from the master and place on target minion
    - name: /home/dlane/.ssh/authorized_keys               #Name of file to manage
    - source: salt://files/authorized_keys         #source file to download to the minion

