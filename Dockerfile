FROM ubuntu:latest
RUN apt-get update -y && apt-get install default-jdk -y
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.65.tar.gz && mv apache-tomcat-9.0.65/* /opt/tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
WORKDIR /opt/tomcat/webapps
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war .
EXPOSE 8080

#docker build -t tomcat .
#docker run -itd --name test01 -p 8080:8080 tomcat
test01- container name 
-p - port mapping
tomcat - image name
