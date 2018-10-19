#!/bin/sh

echo "The application will start in ${JHIPSTER_SLEEP}s..." && sleep ${JHIPSTER_SLEEP}
echo ${CONSUL_SERVER_HOST}
exec java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar "${HOME}/app.war" " --spring.cloud.consul.host=${CONSUL_SERVER_HOST}" "$@"
