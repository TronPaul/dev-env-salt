intellij:
  archive.extracted:
    - name: /opt/idea-IC
    # Using http because of cert chain issues
    - source: http://download.jetbrains.com/idea/ideaIC-2016.2.1.tar.gz
    - source_hash: http://download.jetbrains.com/idea/ideaIC-2016.2.1.tar.gz.sha256
    - archive_format: tar
    - tar_options: --strip-components 1

/usr/share/applications/intellij.desktop:
  file.managed:
    - source: salt://intellij-idea.desktop
