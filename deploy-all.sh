#!/bin/bash

ls | while read SNAME ; do
	if [ -d "$SNAME" ] ; then
		helm install "${SNAME}" "${SNAME}"
	fi
done
