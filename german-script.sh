#!/usr/bin/env bash
wget -O ~/.vocab-german "https://raw.githubusercontent.com/Abourass/sudoCab/master/.vocab-german.sh" --no-check-certificate
wget -O ~/.vocab-script-de "https://raw.githubusercontent.com/Abourass/sudoCab/master/.vocab-script-de.sh" --no-check-certificate

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OSBASHRC=bash_profile
fi
if ! grep -Fxq '~/.vocab-german' ~/.$OSBASHRC; then
	echo $'\n~/.vocab-german' >> ~/.$OSBASHRC
fi

OSBASHRC="zshrc"
if [[ -f ~/.$OSBASHRC ]]; then
	if ! grep -Fxq '~/.vocab-german' ~/.$OSBASHRC; then
		echo $'\n~/.vocab-german' >> ~/.$OSBASHRC
	fi
fi

echo $'chmod u+x ~/.vocab-german'
echo $'chmod u+x ~/.vocab-script-de'
