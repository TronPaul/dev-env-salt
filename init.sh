#!/bin/bash

sed -i /etc/salt/minion -e 's/^#?file_client:.*/file_client: local/'
mkdir -p /srv/{salt,pillar}
rm -rf /srv/{salt,pillar}/*
cp -r salt/* /srv/salt/
cp -r pillar/* /srv/pillar/
echo user: $USERNAME | sudo tee /srv/pillar/user.sls > /dev/null
