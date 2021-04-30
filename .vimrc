" Включение сторонних плагинов
syntax on
filetype plugin on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-yawiki

call vundle#begin()
    Plugin 'raimondi/delimitmate'
    Plugin 'haya14busa/incsearch.vim'
    Plugin 'haya14busa/incsearch-fuzzy.vim'
	Plugin 'vcscommand.vim'

    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'junegunn/fzf.vim'

"    Plugin 'gmarik/Vundle.vim'
"    Plugin 'tpope/vim-fugitive' " GIT
"    Plugin 'L9'
"
"    Plugin 'mattn/emmet-vim'
    Plugin 'scrooloose/nerdtree'
"    Plugin 'mhartington/oceanic-next'
    Plugin 'kien/ctrlp.vim'
    Plugin 'tpope/vim-surround'
"    Plugin 'ianks/vim-tsx'
"
    Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on

source ~/.vim/vim-config/sensible.vim
"source ~/.vim/vim-config/functions/go-to-file.vim
"source ~/.vim/vim-config/functions/sorts.vim
"source ~/.vim/vim-config/functions/grep.vim
source ~/.vim/vim-config/functions/split.vim
"source ~/.vim/vim-config/set.backup.vim
source ~/.vim/vim-config/set.edit.vim
"source ~/.vim/vim-config/set.history.vim
"source ~/.vim/vim-config/set.other.vim
"source ~/.vim/vim-config/set.search.vim
"source ~/.vim/vim-config/colors.vim
source ~/.vim/vim-config/config.pluggins.vim
"source ~/.vim/vim-config/set.statuline.vim
