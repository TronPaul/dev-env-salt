{% set user = pillar['user'] %}
{% set lein_path = '/home/{}/.local/bin/lein'.format(user) %}

lein:
  cmd.run:
    - name: wget -q https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -O {{lein_path}}
    - user: {{user}}
    - creates: {{lein_path}}
  file.managed:
    - name: {{lein_path}}
    - mode: 0775
