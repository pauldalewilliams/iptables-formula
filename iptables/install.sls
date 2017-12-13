{% from "iptables/map.jinja" import iptables with context %}

iptables-pkg:
  pkg.installed:
    - name: {{ iptables.pkg }}
