FROM tomcat:7-jre8-alpine
MAINTAINER Tjen Wellens <tjen.wellens+docker@gmail.com>

COPY tomcat-users.xml conf/tomcat-users.xml

EXPOSE 8080

CMD ["catalina.sh", "run"]
