#!/usr/bin/env bash
# @name        welcommsg.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       welcomemsg.sh <msg> <voice-name>
# @description Displays a message. Outputs this message to a .AIFF file.
#######################################################################
clear
SCRIPT_NAME=${0};MSG=${1};VOICE=${2}
OUTPUT_FILE="welcomemsg_${2}.aiff"
echo "*** ${MSG} ***"
say -o ${OUTPUT_FILE} -v ${VOICE} ${MSG}