#!/usr/bin/env bash
wget -O ~/.vocab "https://raw.githubusercontent.com/Abourass/sudoCab/master/.vocab" --no-check-certificate
wget -O ~/.vocab-script "https://raw.githubusercontent.com/Abourass/sudoCab/master/.vocab-script" --no-check-certificate

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OSBASHRC=bash_profile
fi

if ! grep -Fxq '~/.vocab' ~/.$OSBASHRC; then
	echo $'\n~/.vocab' >> ~/.$OSBASHRC
fi

OSBASHRC="zshrc"
if [[ -f ~/.$OSBASHRC ]]; then
	if ! grep -Fxq '~/.vocab' ~/.$OSBASHRC; then
		echo $'\n~/.vocab' >> ~/.$OSBASHRC
	fi
fi

echo $'chmod u+x ~/.vocab'
echo $'chmod u+x ~/.vocab-script'
