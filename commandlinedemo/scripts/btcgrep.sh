#!/usr/bin/env bash
# @name        btcgrep.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       btcgrep.sh ${FILE} {OUTPUT_DEST}
# @description Removes .DS_Store files. 
# @note BTC doesn't begin with 0x, is between 24-35 characters.
#################################################
FILE=${1};OUTPUT_DEST=${2}
BTC_PATTERN="^[a-zA-Z1-9]{2}[a-zA-Z0-9]{22,33}" 
if [[ ! -f ${FILE} ]];then
	echo ${FILE} not found.;exit 1
else
	grep -Eon ${BTC_PATTERN} ${FILE} > ${OUTPUT_DEST}/btc-grep-results.txt;exit 0
fi