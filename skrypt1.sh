#!/bin/bash


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
