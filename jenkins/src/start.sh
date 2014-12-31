#!/bin/bash
for job in $(find /var/lib/jenkins/jobs/ -name config.xml)
do
  sed -i "s/TOMCAT_PORT_8080_TCP_ADDR/$TOMCAT_PORT_8080_TCP_ADDR/g" -i $job
done

/etc/init.d/jenkins start
tail -f /var/log/jenkins/jenkins.log
