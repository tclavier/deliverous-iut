#!/bin/bash

sed -e "s/JENKINS_IP/$JENKINS_PORT_80_TCP_ADDR/g"  -e "s/TOMCAT_IP/$TOMCAT_PORT_80_TCP_ADDR/g"  -i /etc/nginx/conf.d/iut.azae.net.conf

/etc/init.d/nginx start
