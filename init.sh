#!/bin/bash

sed -i /etc/salt/minion -e 's/^#?file_client:.*/file_client: local/'
mkdir -p /srv/salt
rm -rf /srv/salt/*
cp -r salt/* /srv/salt/
