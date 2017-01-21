" Включение сторонних плагинов
syntax on
filetype plugin on
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'L9'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'elzr/vim-json'
    Plugin 'pangloss/vim-javascript'
    Plugin 'heavenshell/vim-jsdoc'
    Plugin 'scrooloose/nerdtree'
    Plugin 'itchyny/lightline.vim'
    Plugin 'mtscout6/syntastic-local-eslint.vim'
    Plugin 'maksimr/vim-jsbeautify'
    Plugin 'maksimr/vim-yate'

call vundle#end()
filetype plugin indent on

source ~/.vim/vim-config/set.backup.vim
source ~/.vim/vim-config/set.edit.vim
source ~/.vim/vim-config/set.history.vim
source ~/.vim/vim-config/set.other.vim
source ~/.vim/vim-config/set.search.vim
source ~/.vim/vim-config/set.statuline.vim
source ~/.vim/vim-config/colors.vim
source ~/.vim/vim-config/config.pluggins.vim
