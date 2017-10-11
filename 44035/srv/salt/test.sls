{%- set version = '2017.7.2+ds-1' %}

salt-minion:
  pkg.installed:
    - pkgs:
      - salt-minion: {{ version }}
      - salt-common: {{ version }}
    - order: last
  service.running:
    - order: last
    - require:
      - pkg: salt-minion
