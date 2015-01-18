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

add cargo.xml /var/lib/jenkins/jobs/cargo/config.xml
add github-skeleton.xml /var/lib/jenkins/jobs/github-skeleton/config.xml
add ludicode.xml /var/lib/jenkins/jobs/ludicode/config.xml
add moutonnerisk.xml /var/lib/jenkins/jobs/moutonnerisk/config.xml
add rallypoint.xml /var/lib/jenkins/jobs/rallypoint/config.xml
add studieswar.xml /var/lib/jenkins/jobs/studieswar/config.xml
add youngagain.xml /var/lib/jenkins/jobs/youngagain/config.xml
add fantasy-fighters.xml /var/lib/jenkins/jobs/fantasy-fighters/config.xml
add JRStudio.xml /var/lib/jenkins/jobs/JRStudio/config.xml
add mediashare.xml /var/lib/jenkins/jobs/mediashare/config.xml
add multichess.xml /var/lib/jenkins/jobs/multichess/config.xml
add shootmovie.xml /var/lib/jenkins/jobs/shootmovie/config.xml
add vinland.xml /var/lib/jenkins/jobs/vinland/config.xml


run chown -R jenkins:jenkins /var/lib/jenkins/plugins/ /var/lib/jenkins/jobs/

add start.sh /
run chmod +x /start.sh

expose 8080
cmd /start.sh
