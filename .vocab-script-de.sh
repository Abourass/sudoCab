#!/usr/bin/env bash

size=${#wordArray[@]}

rand=$(( ( RANDOM % size )  + 1 ))

RED='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color
bold=$(tput bold)
normal=$(tput sgr0)
printf "${bold}Word Of The Session: ${RED}${wordArray[rand-1],,}${NC}\n"
printf "${bold}Meaning            : ${PURPLE}${meaningArray[rand-1],,}${NC}\n"
printf "${bold}Pronunciation      : ${PURPLE}${pronunciationArray[rand-1],,}${NC}\n"
printf "\n"

exit 0