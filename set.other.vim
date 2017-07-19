set termencoding=utf8
set number
"set cursorline
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set mouse=a
set mousemodel=popup

" Навигация с учетом русских символов, учитывается командами следующее/предыдущее слово и т.п.
set iskeyword=@,48-57,_,192-255

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden
set guioptions-=T
" Сделать строку команд высотой в одну строку
set ch=1
" Скрывать указатель мыши, когда печатаем
set mousehide


set nocompatible
set ruler
set showcmd
set wildmenu
" Настройка отображения специальных символов
set list listchars=tab:→\ ,trail:·

