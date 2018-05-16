#!/bin/bash

function create_link () {
	file=${1}
    if [ -f ~/${file} ]; then 
		rm ~/${file}
		echo 'rm ~\'${file}
	fi
	ln -s ${file} ~/${file}
	echo 'link create ~/'${file}
}

function create_link2 () {
	file=${1}
	dir=${2}

    if [ ! -d ${dir} ]; then
		mkdir -p ${dir}
		echo 'mkdir -p '${dir}
	fi

    if [ -f ${dir}/${file} ]; then 
		rm ${dir}/${file}
		echo 'rm '${dir}'\'${file}
	fi
	ln ${file} ${dir}/${file}
	echo 'link create '${dir}'/'${file}
}

create_link .gitconfig
