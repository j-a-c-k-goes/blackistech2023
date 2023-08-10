#!/usr/bin/env bash
# @name        ethgrep.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       ethgrep.sh ${FILE} {OUTPUT_DEST}
# @description Greps with eth wallet address pattern.
# @note        eth addressbegins with 0x, is 42 alphanumberic characters.
#########################################################################
FILE=${1}; OUTPUT_DEST=${2}
ETH_PATTERN="^[0x]{2}[a-zA-Z0-9]{40}"
if [[ ! -f ${FILE} ]];then
	echo ${FILE} not found.
	exit 1
else
	grep -Eon ${ETH_PATTERN} ${FILE} > ${OUTPUT_DEST}/eth-grep-results.txt
	cat ${OUTPUT_DEST}/eth-grep-results.txt
	exit 0
fi