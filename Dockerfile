FROM tomcat:8
WORKDIR /usr/local/tomcat
COPY /webapps.dist /webapps
COPY target/java-example.war /webapps
EXPOSE 8082
CMD ["catalina.sh", "run"]
