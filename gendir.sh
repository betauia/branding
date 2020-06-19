#!/usr/bin/env bash
dirExsists(){
echo ""
	if [ -d $1 ]
	then
		echo "$green [O.K] Found $1 $normie"
	else
		echo "$red [Error]: Can't find $1, Creating directory $normie"
		mkdir -p $1
	fi
}

imgFolders="png jpg psd svg fonts"
dir="./assets/"
projectName=$1
projectDir=$dir$projectName
dirExsists $projectDir

for name in $imgFolders; do
    mkdir -pv $projectDir"/"$name
done;
