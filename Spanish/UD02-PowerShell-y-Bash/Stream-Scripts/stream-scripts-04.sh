#!/bin/bash

# This script is licensed under GPLv3 or higher.
# Author: Angel Berlanas
# 

# Script description
# Generate a several files in a $TEMPORARY_FOLDER to 
# generate a lot o fake-mails.


# Get the UNIQUE and TEMPORARY folder 
TEMPORARY_FOLDER=$(mktemp -d /tmp/report-temp.XXXX)

# Create the structure from the 
# rsrc folder that is included in the zip file.
echo " * Working in ${TEMPORARY_FOLDER}"
mkdir -p ${TEMPORARY_FOLDER}
cp -r rsrc/users-and-avatars.csv ${TEMPORARY_FOLDER}
mkdir -p ${TEMPORARY_FOLDER}/avatars/

# From here ----> Correct the script ^_^

# For each user (line) of the file "users-and-avatars.csv" do the 
# next operations:

while read line; do 
# Create a file in ${TEMPORARY_FOLDER} with the name:
# ${username}.mail.

username=$(echo $line|cut -d "," -f1)
touch ${TEMPORARY_FOLDER}/${username}.mail

# Inside of this file, the first line must be the greeting:
# If the user is Male the greeting will be:
# - Dear Mr ${username}
# If the user is Female the greeting will be:
# - Dear Mrs ${username}

echo " ^_^ "
# Next must be placed a relative path to his/her avatar 
# using the html <img> tag.
# (that must to be downloaded first with the wget command, and placed 
# in avatars folder (previously created)).

# man wget ^_^.


# And after that a simple text : "You are the nicest"
# And a polite farewell: "See you later"

# Example for the first user:

# Dear Mr bgallaway0
# <img src="avatars/bgallaway0.png">
# You are the nicest
# 
# See you later.

# This example must be named as : bgallaway0.mail 

done < ${TEMPORARY_FOLDER}/users-and-avatars.csv

exit 0
