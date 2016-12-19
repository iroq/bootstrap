#!/bin/sh

# setup keys
git clone https://github.com/iroq/keys $HOME/.keys &&
ln -fs $HOME/keys/.git-credentials $HOME/.git-credentials

# setup dots
git clone --separate-git-dir=$HOME/.dots http://github.com/iroq/dots $HOME/dots-tmp &&
rm -r $HOME/dots-tmp/ 
alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
config checkout -- .
