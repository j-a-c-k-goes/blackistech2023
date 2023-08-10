#!/usr/bin/env bash
# @name        goreadme.sh
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       goreadme.sh ${PROJECT_PATH} ${README_TITLE}
# @description Creates a readme via prompts.
####################################################################
SCRIPT_NAME=${0}
PROJECT_PATH=${1}
README_TITLE=${2}
README_FILE="README.md"
PROMPT_0="Short description of project:"
PROMPT_1="What is motivating this project?"
PROMPT_2="What obstacles or resistance might you encounter?"
PROMPT_3="Is this for profit or pure testing/research? Or both?"
PROMPT_4="What technologies are you using?"
PROMPTS=(${PROMPT_0} ${PROMPT_1} ${PROMPT_2} ${PROMPT_3})
#---------------------------------------------------------------------
# Check if directory exists
DIRECTORY_EXISTS="Ok great. ${PROJECT_PATH} exists."
DIRECTORY_DOES_NOT_EXIST="Oops. ${PROJECT_PATH} is not present."
#---------------------------------------------------------------------
function echo_answer_into_README(){ 
	echo ${ANSWER} >> ${README_FILE} 
}
function echo_section_into_README(){ 
	echo "${1} ${2}" >> ${3} 
}
function script_help(){
	echo "
Usage:
This script expects two arguments, a path and a project name.
./goreadme.sh <PATH> <README_TITLE>"
}
function script_context(){
	echo "
------------------------------------------------------------------------
This README generator will prompt you for README content.
There a few prompts, but not so many that comlpeting them is a time suck.
Once complete, you can tweak the file to your liking.
------------------------------------------------------------------------"
}
function create_README(){
	echo "*** Creating a README.md file for '${README_TITLE}' ***"
	touch ${README_FILE}
	date > ${README_FILE}
	echo "# ${README_TITLE}" >> ${README_FILE}
}
function run_prompt(){
	echo "------------------------------------------------------------------------"
	echo "*** Introduction Section Prompts ***"
	new_space ${README_FILE}
	echo_section_into_README "##" "✍️ Description" ${README_FILE}
	read -p "${PROMPT_0} >>> " INPUT; ANSWER=${INPUT}
	echo_answer_into_README ${ANSWER} ${README_FILE}
	#---------------------------------------------------------------------
	new_space ${README_FILE}
	echo_section_into_README "##" "💡 Motivation" ${README_FILE}
	read -p "${PROMPT_1} >>> " INPUT; ANSWER=${INPUT}
	echo_answer_into_README ${ANSWER} ${README_FILE}
	#---------------------------------------------------------------------
	new_space ${README_FILE}
	echo_section_into_README "##" "🌋 Obstacles/Challenges" ${README_FILE}
	read -p "${PROMPT_2} >>> " INPUT; ANSWER=${INPUT}
	echo_answer_into_README ${ANSWER} ${README_FILE}
	#---------------------------------------------------------------------
	new_space ${README_FILE}
	echo_section_into_README "##" "🤑 Profit" ${README_FILE}
	read -p "${PROMPT_3} >>> " INPUT; ANSWER=${INPUT}
	echo_answer_into_README ${ANSWER} ${README_FILE}
	#---------------------------------------------------------------------
	new_space ${README_FILE}
	echo_section_into_README "##" "🛠️ Technology" ${README_FILE}
	for index in {1..3};
	do
		read -p "(${index}/3) ${PROMPT_4} >>> " INPUT
		ANSWER=${INPUT}
		echo "* ${ANSWER}" >> ${README_FILE}
	done
	#---------------------------------------------------------------------
	new_space ${README_FILE}
	echo_section_into_README "##" "🔥 Features" ${README_FILE}
	for index in {1..3};
	do
		read -p "(${index}/3) List a feature of your project >>>  " INPUT
		ANSWER=${INPUT}
		echo "* ${ANSWER}" >> ${README_FILE}
	done
	echo "------------------------------------------------------------------------"
	echo "Creating sections to modify later."
	new_space ${README_FILE}
	echo "## ⚠️ Installation" >> ${README_FILE}
	echo "## 🏁 Milestones" >> ${README_FILE}
	echo "## 👽 Future Plans for ${README_TITLE}" >> ${README_FILE}
	echo "------------------------------------------------------------------------"
	new_space ${README_FILE}
	echo "## 🙏🏾 Credits" >> ${README_FILE}
	for index in {1..3};
	do
		read -p "Enter a contributor to your project >>> " INPUT
		ANSWER=${INPUT}
		echo_answer_into_README ${ANSWER} ${README_FILE}
	done
}
#-----------------------------------------------------------------
if [[ ! -d ${PROJECT_PATH} ]];then
	echo ${DIRECTORY_DOES_NOT_EXIST}; script_help
	exit 1
else
	echo ${PROJECT_PATH}; script_context
	cd ${PROJECT_PATH}
	create_README ${README_FILE} ${README_TITLE}
	run_prompt ${RPROJECT_PATH} ${README_TITLE} ${PROMPT_0} ${PROMPT_1} ${PROMPT_2} ${PROMPT_3}
	cat ${README_FILE} | less
fi