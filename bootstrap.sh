#!/bin/sh

# setup dots
git clone --separate-git-dir=$HOME/.dots http://github.com/iroq/dots $HOME/dots-tmp &&
rm -r ~/dots-tmp/ &&
alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

# setup keys
git clone https://github.com/iroq/keys ~/keys &&
ln -fs ~/keys/.git-credentials ~/.git-credentials
