#!/bin/sh
cd $(dirname $0)

#
# Install VIM
#
if [ ! -e $HOME/.vim/backup ]; then
    mkdir -p $HOME/.vim/backup
fi

if [ ! -e $HOME/.vim/bundle ]; then
    mkdir -p $HOME/.vim/bundle
fi

if [ ! -e $HOME/.vim/tmp ]; then
    mkdir -p $HOME/.vim/tmp
fi

echo "Replacing $HOME/.vimrc"
echo "----------------------"
cp vimrc $HOME/.vimrc

if [ ! -e $HOME/.vim/autoload/plug.vim ]; then

    if [ ! -e $HOME/.vim/autoload ]; then
        mkdir -p ~/.vim/autoload
    fi

    echo "Installing vim-plug"
    echo "-----------------"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # auto-fetch the bundle
    # this can blow up the whole install ... so leave it last (hacky)
    vim +PlugInstall
fi
