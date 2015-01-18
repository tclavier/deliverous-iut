task :stop do
  `docker stop tomcat`
  `docker stop jenkins`
  `docker stop lb`
  `docker rm tomcat`
  `docker rm jenkins`
  `docker rm lb`
end

task :start => :stop do
  sh "docker run -d --name tomcat tclavier/tomcat"
  sh "docker run -d --name jenkins --link tomcat:tomcat tclavier/jenkins"
  sh "docker run -d --name lb --link tomcat:tomcat --link jenkins:jenkins -p 8000:80 tclavier/ci-lb"
end
