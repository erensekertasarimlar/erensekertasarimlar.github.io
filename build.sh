#!/bin/sh

# first, build the site. target is _site folder
jekyll build

# store current dir as we need to change dir
CURRENT_DIR=`pwd`

cd /Users/ali/Desktop/personal-code/erensekertasarimlar.github.io/

# remove all files except .git
# see http://www.cyberciti.biz/faq/linux-bash-delete-all-files-in-directory-except-few/
shopt -s extglob
rm -Rf !(.git)

# go back to source dir
cd "$CURRENT_DIR"

# copy generated _site to target
cp -R _site/* /Users/ali/Desktop/personal-code/erensekertasarimlar.github.io/