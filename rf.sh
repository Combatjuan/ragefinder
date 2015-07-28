#!/usr/bin/env bash

usage() {
	echo ${##*/} [--profanity file] [--extension ext] [directory]
}

word_list="~/.profanity"
dir=

while [[ $# -ne 0 ]]; do
	if [[ "$1" == '--help' || "$1" == '-?' ]]; then
		usage
		exit 1
	elif [[ "$1" == '--profanity' || "$1" == '-p' ]]; then
		shift
		word_list="$1"
		if [[ ! -f "$word_list" ]]; then
			echo "Can't find word list $word_list."
			exit 1
		fi
	elif [[ -n "$dir" ]]; then
		echo "Huh?  what's that?"
		usage
		exit 1
	else
		dir="$1"
	fi
	shift
done

dir=${dir:-$(pwd)}
files=$(find $dir -name '*.py')

#===============================================================================
profanity="poop\|wtf\|lol\|fuck\|shit\|hell\|damn\|hate\|murder\|crap\|ass\|bitch\|jesus"

for f in $files; do
	grep "$profanity" -wi "$f" 2>/dev/null
done

