#!/bin/sh

function setupRepository {
    NAME=$1

    git clone --separate-git-dir=$HOME/.$NAME http://github.com/iroq/$NAME $HOME/$NAME-tmp &&
    rm -r $HOME/$NAME-tmp/ 
    alias $NAME='/usr/bin/git --git-dir=$HOME/.$NAME/ --work-tree=$HOME'
    $NAME checkout -- .
    $NAME config status.showUntrackedFiles no
}

setupRepository dotfiles
setupRepository keys
