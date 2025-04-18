#!/bin/bash
putanja="/mnt/c/Users/Korisnik/Github/OS-zadace/Zadatak_za_vjezbu_3/screenshoots"
prefiks=1
lista=()
for dat in "$putanja"/*; do
	ime=$(basename "$dat")
	novo_ime=screenshoot_"$prefiks"_"$ime"
	mv "$dat" "$putanja"/"$novo_ime"
	prefiks=$(($prefiks+1))
	lista+=("$novo_ime")
done
echo ${lista[@]}
