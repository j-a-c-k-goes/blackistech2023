#!/usr/bin/env bash
# @name        emailgrep.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       emailgrep.sh ${FILE} {OUTPUT_DEST}
# @description Greps with email address pattern.
#################################################
FILE=${1}; OUTPUT_DEST=${2}
AZazPUNC=[a-zA-Z0-9._-]
AZazPUNC2=[a-zA-Z0-9_-]
EMAIL_PATTERN="^${AZazPUNC}\+@${AZazPUNC2}\+\.[a-z]\{2,\}"
if [[ ! -f ${FILE} ]];then
	echo ${FILE} not found.;exit 1
else
	grep -iwn ${EMAIL_PATTERN} ${FILE} > ${OUTPUT_DEST}/email-grep-results.txt
        cat ${OUTPUT_DEST}/email-grep-results.txt
        exit 0
fi
