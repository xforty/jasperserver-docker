

# A Jasperserver docker container.

## Installation/ Setup

* Copy the distro/bin folder to /srv/jasperserver on your docker host

* Edit the default.properties to meet your needs.

* Execute the run command going to a bash shell:

  docker run --rm -it \
    --env-file=environment.txt \
    --volume=/srv/jasperserver/webapp:/var/lib/tomcat7/webapps \
    --volume=/srv/jasperserver/jasperreports-server-cp-5.6.1-bin:/data \
    --link mysql:mysql \
    --publish=8080:8080 \
    xforty/jasperserver \
    bash -l



* Run buildomatic js-install-ce.sh minimal

* Exit out of your docker container and then start it proper

  docker run --rm -it \
    --env-file=environment.txt \
    --volume=/srv/jasperserver/webapp:/var/lib/tomcat7/webapps \
    --volume=/srv/jasperserver/jasperreports-server-cp-5.6.1-bin:/data \
    --link mysql:mysql \
    --publish=8080:8080 \
    xforty/jasperserver



