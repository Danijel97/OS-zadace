#!/bin/bash
abs_putanja=$1
dat_nastavak=$2
broj_arg=$#
if [ "$broj_arg" -ne 2 ]; then
	echo "Potrebno je proslijediti točno 2 argumenta"
	exit
else
	broj_dat=0
	for dat in "$abs_putanja"/*"$dat_nastavak"; do
		if [ -f "$dat" ]; then
			echo $(basename "$dat")
			broj_dat=$(("$broj_dat"+1))
		fi
	done
	if [ "$broj_dat" -eq 0 ]; then
		echo "Nema datoteka s takvim nastavkom"
	fi
fi
