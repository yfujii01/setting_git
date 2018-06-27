#!/bin/bash

# 展開する(ハードリンク)
function create_link () {
	file=${1}
	dir_inp=${2}
	dir_out=${3}

    if [ ! -d ${dir_out} ]; then
		mkdir -p ${dir_out}
		echo ${dir_out}ディレクトリが無かったので作成しました
	fi

	ln -f ${dir_inp}/${file} ${dir_out}/${file}
	echo 「${file}」を「${dir_inp}」から「${dir_out}」へリンクしました
}

create_link .gitconfig . ~
create_link ignore . ~/.config/git
