FROM tomcat:10.1.8-jre17-temurin-jammy

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD Survey.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]