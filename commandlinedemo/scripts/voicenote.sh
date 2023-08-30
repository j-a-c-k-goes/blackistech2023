#!/usr/bin/env bash
# @name        voicenote.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       voicenote.sh <note> <voice-name> <alias>
# @description Creates a voice note.
#              Outputs this message to an .AIFF file.
##############################################################
clear
NOTE=${1}; VOICE=${2}; ALIAS=${3}
DATE=`date "+%Y%m%d%H%M%S"`
FILE_NAME="voicenote_${DATE}_${ALIAS}.aiff"
VOICE_NOTES_FOLDER=~/BlackIsTech2023/commandlinedemo/voice-notes
echo "*** New Note: ${1} ***"
if [[ ! -d ${VOICE_NOTES_FOLDER} ]];then
	echo "${VOICE_NOTES_FOLDER} does not exist. Exiting.";exit 1
else
	say -o "${VOICE_NOTES_FOLDER}/${DATE}_voicenote_${ALIAS}.aiff" -v ${VOICE} ${NOTE}
fi
