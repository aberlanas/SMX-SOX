#!/bin/bash

# Some Values
FC=0
WELLINGTON=true
RESERVES=4
action="none"

echo " * Welcome to W1815 - a SMX Bot "

while [[ $action != 'q' && -n $action ]]; do

    read -p " French Casualties are greater than 4?" answerFC

    # Follow the gaps

    #


    echo " **** **** "
    echo "Waiting for the next Wellington Turn, press q to quit"
    echo "press another key to make the bot take the decision"
    read -p " * Action : " action

done

echo " * Thanks for using the Bot"


exit 0
