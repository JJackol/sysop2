#!/bin/bash

echo $@

if [ -d ${1} ]
then
	prefix=${1}
	for filee in `ls  ${prefix}`
	do
		if [ -d ${prefix}/${filee}  ]
		then
			infix=${filee}
			echo aaaaaaa ${infix}
			for filee in `ls  ${prefix}/${infix}`
			do
				if [ -f ${prefix}/${infix}/${filee}  ]
				then
					echo ${prefix}/${infix}/${filee}
				fi
			done
		else
			echo ${prefix}/${filee}
		fi
	done
fi
