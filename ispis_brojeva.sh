#!/bin/bash
broj=$1
if [[ broj -ge 1 && broj -le 10 ]]; then
	touch brojevi.txt
	for ((i=1;i<=$broj;i++)); do
		echo $i>>brojevi.txt
	done

else
	echo "Broj nije unutar zadanog raspona"
	exit
fi
