#!/usr/bin/env bash
wget -O ~/.vocab "https://raw.githubusercontent.com/Abourass/sudoCab/master/sudoCab/.vocab" --no-check-certificate
wget -O ~/.vocabscript "https://raw.githubusercontent.com/Abourass/sudoCab/master/sudoCab/.vocabscript" --no-check-certificate
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
