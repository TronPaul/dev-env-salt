{% set user = pillar['user'] %}

pew:
  cmd.run:
    - name: /usr/bin/pip3 install --user pew
    - user: {{user}}
