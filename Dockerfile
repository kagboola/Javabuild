FROM tomcat:8
WORKDIR /usr/local/tomcat
RUN ls
COPY webapps.dist webapps
COPY target/java-example.war /webapps
EXPOSE 8082
CMD ["catalina.sh", "run"]
