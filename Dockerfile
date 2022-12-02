FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps
COPY ./context.xml /opt/tomcat/webapps/host-manager/META-INF/
COPY ./manager/context.xml /opt/tomcat/webapps/manager/META-INF/
COPY ./tomcat-users.xml /opt/tomcat/conf


