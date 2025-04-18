#!/bin/bash
naziv_direktorija=$1
broj_arg=$#
putanja_skripte="/mnt/c/Users/Korisnik/Github/OS-zadace/Zadatak_za_vjezbu_3"
if [ "$broj_arg" -ne 1 ]; then
	echo "Potrebno je proslijediti samo jedan argument"
	exit
else
	pronalazak=0
	datoteke=()
	if [ -d "$putanja_skripte"/"$naziv_direktorija" ]; then
		pronalazak=1
		for dat in "$putanja_skripte"/"$naziv_direktorija"/*; do
			if [ -f "$dat" ]; then
			datoteke+=("$dat")
			fi
		done
	fi
	if [ "$pronalazak" -gt 0 ]; then
		zip svi_zapisi.zip "${datoteke[@]}"
	else
		echo "Direktorij ne postoji"
	fi
fi
