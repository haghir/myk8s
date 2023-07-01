#!/bin/bash

ls | while read SNAME ; do
	if [ ! -d "$SNAME" ] ; then
		continue
	fi

	if helm status "${SNAME}" ; then
		continue
	fi

	echo "deploy: ${SNAME}"
	helm install "${SNAME}" "${SNAME}"
done
