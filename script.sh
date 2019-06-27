#!/usr/bin/env bash
wget -O ~/.vocab "https://raw.githubusercontent.com/Abourass/sudoCab/master/sudoCab/.vocab" --no-check-certificate
wget -O ~/.vocabscript "https://raw.githubusercontent.com/Abourass/sudoCab/master/sudoCab/.vocabscript" --no-check-certificate

echo $'\nchmod +x ~/.vocab'
echo $'\nchmod +x ~/.vocabscript'

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
