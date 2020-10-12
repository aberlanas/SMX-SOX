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

# List all the files in ${TEMPORARY_FOLDER}/textos/
# and for each of them that contains the Word : "ipsum" the script must 
# say "Lorem" in Standar Output and "Ipsum" in Error Output.

for AUXF in $(find ${TEMPORARY_FOLDER}/textos/); do

    echo " Ipsum? - ${AUXF} -"

done


# List all the files in ${TEMPORARY_FOLDER}/textos/
# and for each of them that contains the Word : "cerebro" the script must 
# copy it under ${TEMPORARY_FOLDER}/destino/ with the same name.

for AUXF in $(find ${TEMPORARY_FOLDER}/textos/); do

    echo " - Zombie? $AUXF"

done

# Count in the veggie.ipsum , the "garlic occurrences" and write 
# the total count in a file named : vampiros-fuera-de-aqui.txt 
# placed in ${TEMPORARY_FOLDER}.

# OOOPS....MISSING EVERYTHING ..... ^_^ Good Luck!


# Replace all the occurrences of the word : "ea" in the chanante.ipsum file
# with the words: "Murcia, que bella eres", and using redirection to store the new
# murcian file in ${TEMPORARY_FOLDER}/murcia.ipsum



rm -rf ${TEMPORAY_FOLDER}

exit 0
