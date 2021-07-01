#!/bin/sh
PROFILE='/etc/profile'
LOCATION=$(cd $(dirname $0);pwd)
CONTENT='ExecStart=/usr/bin/bash '$LOCATION
cat $LOCATION/.pre > /usr/lib/systemd/system/dingpenertration.service
echo $CONTENT'/startup' >> /usr/lib/systemd/system/dingpenertration.service
cat $LOCATION/.suf >> /usr/lib/systemd/system/dingpenertration.service
systemctl daemon-reload
