#FROM anapsix/alpine-java
#LABEL maintainer="acontrollu116@gmail.com"
#COPY /target/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war /home/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war
#CMD ["java","-war","/home/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war"]


# Pull base image
#From tomcat:7-jre7
# Maintainer
#MAINTAINER "acontrollu116@gmail.com""
# Copy to images tomcat path
#COPY /target/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war /home/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war

FROM tomcat:7-jre8-alpine

# copy the WAR bundle to tomcat
COPY /target/spring3-mvc-maven-xml-hello-world-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/app.war

# command to run
CMD ["catalina.sh", "run"]