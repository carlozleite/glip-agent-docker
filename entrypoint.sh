#!/bin/sh

if [ -z "$GLPI_SERVER" ] && [ -z "$GLPI_USER" ] && [ -z "$GLPI_PASSWORD" ] ; then

	echo "Variables GLPI_SERVER or GLPI_USER or GLPI_PASSWORD not defined ..."
	sleep 5
	exit 2

fi

/usr/bin/glpi-agent -s ${GLPI_SERVER}  -u ${GLPI_USER} -p ${GLPI_PASSWORD} -d --no-fork --debug --logger=stderr ${EXTRA_ARGS}
