FROM tomcat:8
WORKDIR  /usr/local/tomcat/
RUN cp -R webapps.dist webapps
COPY target/java-example.war /usr/local/tomcat/webapps/
EXPOSE 8082
CMD ["catalina.sh", "run"]
