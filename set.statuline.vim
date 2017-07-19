let g:airline#extensions#tabline#enabled = 1

set statusline=%F\ %y%m%r[]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P
