FROM tomcat:8
COPY /usr/local/tomcat/webapps /usr/local/tomcat/webapps2
COPY /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps2
COPY target/java-example.war /usr/local/tomcat/webapps2
EXPOSE 8082
CMD ["catalina.sh", "run"]
