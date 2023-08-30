#!/usr/bin/env bash
# @name        ipgrep.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 09
# @usage       ipgrep.sh ${FILE} {OUTPUT_DEST}
# @description Greps with IP address pattern.
##############################################
FILE=${1}; OUTPUT_DEST=${2}
IP_PATTERN="([0-9]{1,3}[\.]){3}[0-9]{1,3}"
if [[ ! -f ${FILE} ]];then
	echo ${FILE} not found.;exit 1
else
	grep -Eon ${IP_PATTERN} ${FILE} > ${OUTPUT_DEST}/ip-grep-results.txt
	cat ${OUTPUT_DEST}/ip-grep-results.txt
	exit 0
fi
