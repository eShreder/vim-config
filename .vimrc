" Включение сторонних плагинов
syntax on
filetype plugin on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'tpope/vim-fugitive' " GIT
    Plugin 'L9'

    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'

    Plugin 'mattn/emmet-vim'
    Plugin 'elzr/vim-json'
    Plugin 'scrooloose/nerdtree'
    Plugin 'bling/vim-airline'
    Plugin 'mhartington/oceanic-next'
    Plugin 'kien/ctrlp.vim'
    Plugin 'tpope/vim-surround'

    Plugin 'leafgarland/typescript-vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'prettier/vim-prettier'

call vundle#end()
filetype plugin indent on

source ~/.vim/vim-config/functions/sorts.vim
source ~/.vim/vim-config/functions/grep.vim
source ~/.vim/vim-config/functions/split.vim
source ~/.vim/vim-config/set.backup.vim
source ~/.vim/vim-config/set.edit.vim
source ~/.vim/vim-config/set.history.vim
source ~/.vim/vim-config/set.other.vim
source ~/.vim/vim-config/set.search.vim
source ~/.vim/vim-config/set.statuline.vim
source ~/.vim/vim-config/colors.vim
source ~/.vim/vim-config/config.pluggins.vim
