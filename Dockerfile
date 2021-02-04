FROM tomcat:8
COPY target/java-example.war /usr/local/tomcat/webapps2
EXPOSE 8082
CMD ["catalina.sh", "run"]
