{% set user = pillar['user'] %}

/home/{{user}}/.bashrc:
  file.append:
    - sources:
      - salt://powerline-bashrc
