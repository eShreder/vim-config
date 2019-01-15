#!/bin/bash

cd ~;
test -d .vim || mkdir .vim;
cd .vim;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:eShreder/vim-config.git
cd ~;
test -f .vimrc && mv .vimrc .vimrc_old;
ln -s ~/.vim/vim-config/.vimrc ./;
vim +PluginInstall +qall
