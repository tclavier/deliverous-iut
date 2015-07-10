from deliverous/wheezy

run apt-get update && \
    apt-get install -y --no-install-recommends openjdk-7-jdk tomcat7 && \
    apt-get clean
run apt-get update && \
    apt-get install -y --no-install-recommends tomcat7-admin && \
    apt-get clean

add tomcat-users.xml /etc/tomcat7/tomcat-users.xml
run chmod 664 /etc/tomcat7/tomcat-users.xml
add tomcat7.default /etc/default/tomcat7

# Patch tomcat start script to not use SYS_PTRACE
run apt-get update && \
    apt-get install -y --no-install-recommends patch && \
    apt-get clean
add tomcat7.patch /tmp/
run patch /etc/init.d/tomcat7 < /tmp/tomcat7.patch

#Replace default index page
add index.html /var/lib/tomcat7/webapps/ROOT/index.html

# Install monit to restart tomcat when crash
run apt-get update && \
    apt-get install -y monit && \
    apt-get clean
add tomcat7.monit /etc/monit/conf.d/tomcat

expose 8080
cmd /etc/init.d/monit start; tail -f /var/log/tomcat7/*
