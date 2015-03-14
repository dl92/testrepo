#CS126 LAB 9
#Debbie Lane 2/22/15
#salt state the ensures that all relevant nfs packages are installed
# and the service is on
rpcbind:                # ID declaration
  pkg.installed:            #state declaration
#    - installed         # function - ensure the nfs-utils package is installed
#    - name: nfs-utils
#    - name: rpcbind
nfs-utils:                # ID declaration
  pkg.installed                 #state declaration
#ensure the service is started, service nfs restart or service nfs stop/start
  nfs-service:
    service.running:      #Make sure the nfs service is running and
    - enable: True        #configured to start at boot
    - watch:              #Restart the service if there are
      - file: exports     #changes to the exports file
