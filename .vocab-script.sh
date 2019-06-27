#!/usr/bin/env bash

size=${#wordArray[@]}

rand=$(( ( RANDOM % size )  + 1 ))


# Reset
Color_Off="\033[0m"       # Text Reset

# Regular Colors
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

# Bold
BBlack="\033[1;30m"       # Black
BRed="\033[1;31m"         # Red
BGreen="\033[1;32m"       # Green
BYellow="\033[1;33m"      # Yellow
BBlue="\033[1;34m"        # Blue
BPurple="\033[1;35m"      # Purple
BCyan="\033[1;36m"        # Cyan
BWhite="\033[1;37m"       # White

# Underline
UBlack="\033[4;30m"       # Black
URed="\033[4;31m"         # Red
UGreen="\033[4;32m"       # Green
UYellow="\033[
bold=$(tput bold)
normal=$(tput sgr0)
printf "${Bold}Word Of The Session: ${Red}${wordArray[rand-1],,}${Color_Off}\n"
printf "${Bold}Meaning            : ${Purple}${meaningArray[rand-1],,}${Color_Off}\n"
printf "\n"

exit 0
