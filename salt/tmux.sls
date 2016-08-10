{% set user = pillar['user'] %}

tmux:
  pkg.installed

/home/{{user}}/.tmux.conf:
  file.managed:
    - source: salt://tmux.conf
    - user: {{user}}
    - group: {{user}}
