#!/bin/bash

# Zadanie z listy 1.  Skrypt nr 8
#
# Listowanie   plików   z   zadanego   katalogu   (parametr   wywołania   skryptu),
# wraz   z   jego   podkatalogami.  Zawartość  podkatalogów  ma  być  listowana
# w  postaci  <ścieżkadostępu względem listowanego katalogu>/<nazwa pliku>.
# Ograniczyć  liczbę  zagnieżdżeń  podkatalo-gów (np. do dwóch). 

if [ -d ${1} ]
then
	prefix=${1}
	for filee in `ls  ${prefix}`
	do
		echo ${prefix}/${filee}
		if [ -d ${prefix}/${filee}  ]
		then
			infix=${filee}
			for filee in `ls  ${prefix}/${infix}`
			do
				echo ${prefix}/${infix}/${filee}
			done
		fi
	done
fi
