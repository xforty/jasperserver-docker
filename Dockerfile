FROM phusion/baseimage

MAINTAINER xforty technologies

RUN apt-get -qq update
RUN apt-get -qqy install unzip openjdk-7-jdk tomcat7

WORKDIR /data

#ADD jasperreports-server-cp-5.6.1-bin /data/

#ADD install_jasper.sh /usr/local/bin/install_jasper.sh
#RUN chmod a+x /usr/local/bin/install_jasper.sh

ADD default_master.properties /data/buildomatic/default_master.properties

RUN /bin/mkdir -p /etc/service/jasperserver
ADD start_jasperserver /etc/service/jasperserver/run
RUN chmod a+x /etc/service/jasperserver/run

EXPOSE 8080
