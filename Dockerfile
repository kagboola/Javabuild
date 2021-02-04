FROM tomcat:8
RUN cp /usr/local/tomcat/webapps.dist/ /usr/local/tomcat/webapps/=
COPY target/java-example.war /usr/local/tomcat/webapps/
EXPOSE 8082
CMD ["catalina.sh", "run"]
