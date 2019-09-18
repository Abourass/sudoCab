#!/usr/bin/env bash
wget -O ~/.vocab-German.sh "https://raw.githubusercontent.com/Abourass/sudoCab/master/vocab-German.sh" --no-check-certificate
wget -O ~/.vocab-script.sh "https://raw.githubusercontent.com/Abourass/sudoCab/master/.vocab-script.sh" --no-check-certificate

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OSBASHRC=bash_profile
fi
if ! grep -Fxq '~/.vocab-German.sh' ~/.$OSBASHRC; then
	echo $'\n~/.vocab-German.sh' >> ~/.$OSBASHRC
fi

OSBASHRC="zshrc"
if [[ -f ~/.$OSBASHRC ]]; then
	if ! grep -Fxq '~/.vocab-German' ~/.$OSBASHRC; then
		echo $'\n~/.vocab-German' >> ~/.$OSBASHRC
	fi
fi

echo $"chmod u+x ~/.vocab-German.sh"
echo $"chmod u+x ~/.vocab-script.sh"