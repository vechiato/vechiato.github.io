#!/bin/bash

IFS=$'\n'
blog="/home/vechiato/code/new-hugo-website"
dir="/home/vechiato/code/new-hugo-website/content/blog"
obs="/home/vechiato/obsidian/local/remote"
static="/home/vechiato/code/new-hugo-website/static/obsidian"

mkdir -p $blog
mkdir -p $static
mkdir -p $dir

cd $dir && rm $dir/*.md 
cd $dir && rm ${static}/*
#rm ${static}/*
#rm $dir/*

cd $dir ; grep -rl 'publish: true' $obs |xargs -I {} cp {} $dir
for file in $(find ${dir} -type f -name "*.md"); do
	echo $file
	for priloha in $(perl -p -e 's/\%(\w\w)/chr hex $1/ge' ${file} | grep "\[.*\]\(.*\)" | perl -ne 'm/\[\[(.*)\]\]/ && print $1."\n"' | grep -v ".md$"); do
		echo "img $priloha"
		find $obs -name $priloha |xargs -I {} cp {} $static
	done
	perl -p -i -e 's/\[\[(\w+.*)\]\]/\[image\]\(\/obsidian\/$1\)/g' ${file}
	# ![[img]]()
	sed -i -e "/\[\w+]\(\w+\)/ s/ /%20/g" ${file}
	echo end file
done
  
cd $blog
#git add --all
#git commit -m 'conversion from Obsidian vault'
#git push
git status
