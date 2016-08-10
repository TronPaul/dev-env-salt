{% set user = pillar['user'] %}

powerline:
  cmd.run:
    - name: /usr/bin/pip3 install --user powerline-status
    - user: {{user}}

/usr/share/fonts/truetype:
  file.directory

/usr/share/fonts/truetype/PowerlineSymbols.otf:
  file.managed:
    - source: https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    - source_hash: md5=16d842d90121c528e972bd3af66cf5e0

/usr/share/fontconfig/conf.avail/10-powerline-symbols.conf:
  file.managed:
    - source: https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    - source_hash: md5=69822158b0cc8af0bef456d684200882


/etc/fonts/conf.d/10-powerline-symbols.conf:
  file.symlink:
    - target: /usr/share/fontconfig/conf.avail/10-powerline-symbols.conf
