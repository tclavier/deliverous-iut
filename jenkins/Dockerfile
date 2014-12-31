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

add http://updates.jenkins-ci.org/latest/git.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/git-client.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/matrix-project.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/scm-api.hpi /var/lib/jenkins/plugins/
add http://updates.jenkins-ci.org/latest/credentials.hpi /var/lib/jenkins/plugins/

add http://updates.jenkins-ci.org/latest/deploy.hpi /var/lib/jenkins/plugins/

add github-skeleton.xml /var/lib/jenkins/jobs/github-skeleton/config.xml

run chown -R jenkins:jenkins /var/lib/jenkins/plugins/ /var/lib/jenkins/jobs/

add start.sh /
run chmod +x /start.sh

cmd /start.sh
