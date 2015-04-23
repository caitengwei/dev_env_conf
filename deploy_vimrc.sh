#!/bin/bash - 
#===============================================================================
#
#          FILE: deploy_vimrc.sh
# 
#         USAGE: ./deploy_vimrc.sh 
# 
#   DESCRIPTION: Backup for your ~/.vim and ~/.vimrc, and make symbolic link
#                ~/.vim link to ./vim, and ~/.vimrc link to ./vim/vimrc
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tengwei Cai (twcai), tengweicai@gmail.com
#  ORGANIZATION: 
#       CREATED: 04/23/2015 14:01:06 CST
#      REVISION:  ---
#===============================================================================

echo "======= Start deploy new VIM configurations ======"
echo "mv ~/.vim ~/.vim.bak"
mv ~/.vim ~/.vim.bak
echo "mv ~/.vimrc ~/.vimrc.bak"
mv ~/.vimrc ~/.vimrc.bak
PWD=`pwd`
echo "ln -s $PWD/vim ~/.vim"
ln -s $PWD/vim ~/.vim
echo "ln -s $PWD/vim/vimrc ~/.vimrc"
ln -s $PWD/vim/vimrc ~/.vimrc
echo "===== Finished deploy the VIM configurations ====="
