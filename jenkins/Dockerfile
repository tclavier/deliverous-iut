from deliverous/wheezy

run apt-get update && \
    apt-get install -y --no-install-recommends wget && \
    apt-get clean

run wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
run echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list
run apt-get update && \
    apt-get install -y --no-install-recommends openjdk-7-jdk && \
    apt-get clean
run apt-get update && \
    apt-get install -y --no-install-recommends jenkins net-tools git maven && \
    apt-get clean

add default.jenkins /etc/default/jenkins

add http://updates.jenkins-ci.org/latest/git.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/git-client.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/matrix-project.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/scm-api.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/credentials.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/deploy.hpi /var/lib/jenkins/plugins/

add ludicode.xml /var/lib/jenkins/jobs/ludicode/config.xml
add mediashare.xml /var/lib/jenkins/jobs/mediashare/config.xml
add loupgarou.xml /var/lib/jenkins/jobs/loupgarou/config.xml
add jeudecarte.xml /var/lib/jenkins/jobs/jeudecarte/config.xml
add prolab.xml /var/lib/jenkins/jobs/prolab/config.xml

run chown -R jenkins:jenkins /var/lib/jenkins/plugins/ /var/lib/jenkins/jobs/

add start.sh /
run chmod +x /start.sh

expose 8080
cmd /start.sh
