#!/usr/bin/env bash
# @name        emailgrep.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 09
# @usage       ssngrep.sh ${FILE} {OUTPUT_DEST}
# @description Greps with social security number pattern.
##############################################################
FILE=${1}; OUTPUT_DEST=${2}
SSN_PATTERN="(([0-9]{3}[\-]|[0-9]{3}[\.]|[0-9]{3}[\s])([0-9]{2}[\-]|[0-9]{2}[\.]|[0-9]{2}[\s])([0-9]{4}))"
if [[ ! -f ${FILE} ]];then
	echo ${FILE} not found.;exit 1
else
	grep -Eon ${SSN_PATTERN} ${FILE} > ${OUTPUT_DEST}/ssn-grep-results.txt;exit 0
fi