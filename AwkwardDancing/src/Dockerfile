FROM tomcat:9-jdk11

EXPOSE 8080

COPY ./WebContent/WEB-INF/lib/mysql-connector-j-8.0.31.jar /usr/local/tomcat/lib/mysql-connector-j-8.0.31.jar

ADD ROOT.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]