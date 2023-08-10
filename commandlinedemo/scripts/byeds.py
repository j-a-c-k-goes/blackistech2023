#!/usr/bin/env python3
# @name        byeds.py
# @author      jack a. l., neo&&
# @date        2023 AUGUST 05
# @usage       python bye.ds <root-path>
# @description Removes .DS_Store files. 
#################################################
import glob, os, sys
print("Locating .DS_Store files.")
try:
	for root, directories, files in os.walk(sys.argv[1]):
		for file in files:
			if file.endswith(".DS_Store"):
				joinedPath = os.path.join(root, file)
				print("Deleting ==>", joinedPath)
				if os.remove(joinedPath):
					print("Cannot delete.")
				else:
					print("Deleted")
except IndexError:
	print("Check your arguments.")
	print("Scripts expects you to pass in a location on the file system.")