#!/bin/bash
########################################
# .make.sh
# This script creates sysm links from the user home directory 
# to the dotfiles under the dotfiles directory
########################################

### variables
dir_project="OSX.dotfiles"        #dotfiles direcotry
backupDir=dotfiles_old   #backup directory of old dotfiles

dotfiles_bash=`ls bash/.bash* | xargs -n 1 basename`

#create symbolic links of dot files in ~/
for f in $dotfiles_bash
do
  echo CREATED : symbolic link to $f
  ln -s `pwd`/bash/$f ~/$f
done
