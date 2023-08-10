#!/usr/bin/env bash
# @name        phonegrep.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 09
# @usage       phonegrep.sh ${FILE} {OUTPUT_DEST}
# @description Greps with phone number pattern.
##############################################################
FILE=${1}; OUTPUT_DEST=${2}
AREA_CODE_GROUP="^((\([0-9]{3}\)\s)|([0-9]{3}\-)|([0-9]{3}\.)|[0-9]{3})"
MIDDLE_3_GROUP="([0-9]{3}\-|[0-9]{3}\.|[0-9]{3}\s|[0-9]{3})"
PHONE_PATTERN="${AREA_CODE_GROUP}${MIDDLE_3_GROUP}[0-9]{4}"
if [[ ! -f ${FILE} ]];then
	echo ${FILE} not found.;exit 1
else
	grep -Eon ${PHONE_PATTERN} ${FILE} > ${OUTPUT_DEST}/phone-grep-results.txt;exit 0
fi