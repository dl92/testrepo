iptables:                # ID declaration
  pkg:                 #state declaration
    - installed         # function declaration
#  pkg.installed: []
#  service.running:
  service:
    - running
#    - require:
#    - pkg: iptables
#    - watch:
#      - file: /etc/sysconfig/iptables-config
