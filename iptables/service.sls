{% from "iptables/map.jinja" import iptables with context %}

iptables-service:
  service.running:
    - name: {{ iptables.service }}
    - enable: True
    - require:
      - file: iptables-config

iptables-reload:
  cmd.run:
    - name: iptables-restore < {{ iptables.config }}
    - onchanges:
      - file: iptables-config
    - require:
      - service: iptables-service