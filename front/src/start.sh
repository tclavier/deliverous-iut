#!/bin/bash

sed -e "s/JENKINS_IP/$JENKINS_PORT_8080_TCP_ADDR/g"  -e "s/TOMCAT_IP/$TOMCAT_PORT_8080_TCP_ADDR/g"  -i /etc/nginx/conf.d/iut.azae.net.conf
sed -e "s/GIT_IP/$GIT_PORT_80_TCP_ADDR/g" -i /etc/nginx/conf.d/iut.azae.net.conf

/etc/init.d/nginx start
