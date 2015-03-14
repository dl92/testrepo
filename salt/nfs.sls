#CS126 LAB 9
#Debbie Lane 2/22/15
#salt state the ensures that all relevant nfs packages are installed
# and the service is on
nfs-pkgs:                # ID declaration
  pkg.installed:
    - names:
      - rpcbind
      - nfs-utils
#ensure the service is started, service nfs restart or service nfs stop/start
#rpcbind process, NFS file locking service, then NFS Service.
rpcbind:
  service.running:
    - require:
      - pkg: rpcbind
    - enable: True
nfslock:
  service.running:
    - enable: True
nfs:
  service.running:      #Make sure the nfs service is running and
    - enable: True        #configured to start at boot
    - watch:              #Restart the service if there are
      - file: /etc/exports     #changes to the exports file
