
#!/bin/sh
touch /home/docker-status.log
log=/home/docker-status.log

cat /var/run/docker.pid &> /dev/null
if [ $? == 0 ]; then
echo " docker is running" > $log
else
service docker start
echo " docker is not running so docker restarted" > $log
fi

