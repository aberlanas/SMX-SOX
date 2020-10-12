#!/bin/bash

# This script is licensed under GPLv3 or higher.
# Author: Angel Berlanas
# 

# Script description
# Generate a several files in a TEMPORAL Folder 
# And use them to create a sample report.


# Get the UNIQUE and TEMPORARY folder 
TEMPORARY_FOLDER=$(mktemp -d /tmp/report-temp.XXXX)

# Create the structure from the 
# rsrc folder that is included in the zip file.
echo " * Working in ${TEMPORARY_FOLDER}"
mkdir -p ${TEMPORARY_FOLDER}
cp -r rsrc/* ${TEMPORARY_FOLDER}

# From here ----> Correct the script ^_^

# For each file in ${TEMPORARY_FOLDER}/apps/
# test if this file is a Symbolic Link, if it is true, 
# Write in a file named "symbolinks.list" placed in 
# ${TEMPORARY_FOLDER} the link target's realpath.
# Warning: More than one symbolic link has the same target.

for AUXF in $(find ${TEMPORARY_FOLDER}/apps/); do

    echo " * Is a link?- ${AUXF} -"

done



# List all the files in ${TEMPORARY_FOLDER}/apps/
# all of these which contains in their name the words:
# music, video or audio must be copied at new folder 
# with PATH = ${TEMPORARY_FOLDER}/multimediapps/ and log 
# the operation in a file named "multimediapps.list" placed 
# in ${TEMPORARY_FOLDER}

mkdir -p "${TEMPORARY_FOLDER}/multimediapps/"
for AUXF in $(find ${TEMPORARY_FOLDER}/apps); do

    echo " * Is a Multimediapps? -> $AUXF"

done


# Clean Temporary Folder
echo " Removing : ${TEMPORARY_FOLDER}"
rm -rf ${TEMPORAY_FOLDER}

exit 0
