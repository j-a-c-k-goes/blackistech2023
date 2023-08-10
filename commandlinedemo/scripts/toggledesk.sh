#!/usr/bin/env bash
####################################################
# @name toggledesk.sh
# @author jack a. l., neo&&
# @date 2023 AUGUST 05
# @description desk toggling aliases. 
# @usage ./toggledesk.sh <CONFIG>
####################################################
CONFIG=${1}
DESK_ON_COMMAND="defaults write com.apple.finder CreateDesktop true;killall Finder"
DESK_OFF_COMMAND="defaults write com.apple.finder CreateDesktop false;killall Finder"
if [[ ! -f ${CONFIG} ]];then
	echo "${CONFIG} not available."
	exit 1
else
	echo alias testdeskon="\"${DESK_ON_COMMAND}\"" >> ${CONFIG}
	echo alias testdeskoff="\"${DESK_OFF_COMMAND}\"" >> ${CONFIG}
	source ${CONFIG}
fi