FROM nubomedia/apps-baseimage:src

MAINTAINER Nubomedia

ADD keystore.jks /
ADD . /home/nubomedia

RUN sudo chown -R nubomedia /home/nubomedia
RUN cd /home/nubomedia/ar3d && mvn compile

EXPOSE 8080 8443 443

ENTRYPOINT cd /home/nubomedia/ar3d && mvn exec:java
