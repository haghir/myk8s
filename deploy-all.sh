#!/bin/bash

ls | while read SNAME ; do
	if [ ! -d "$SNAME" ] ; then
		continue
	fi

	echo ""
	echo "deploying ${SNAME}"

	if helm status "${SNAME}" ; then
		continue
	fi

	helm install "${SNAME}" "${SNAME}"
done
