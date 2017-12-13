{% from "iptables/map.jinja" import iptables with context %}

iptables-config:
  file.managed:
    - name: {{ iptables.config }}
    - source: salt://iptables/files/iptables
    - mode: 600
    - user: root
    - group: root
    - template: jinja
    - require:
      - pkg: iptables-pkg
