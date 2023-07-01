#!/bin/bash

ls | while read SNAME ; do
	if [ -d "$SNAME" ] ; then
		echo "deploy: ${SNAME}"
		helm install "${SNAME}" "${SNAME}"
	fi
done
