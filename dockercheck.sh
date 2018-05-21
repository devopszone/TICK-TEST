#!/bin/sh
touch /root/docker-status.log
log=/root/docker-status.log

cat /var/run/docker.pid &> /dev/null
if [ $? == 0 ]; then
echo " docker is running" > $log
else
echo " docker is not running" > $log
fi

