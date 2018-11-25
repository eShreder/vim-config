set autoindent
set nowrap
set expandtab

set shiftwidth=4
set tabstop=4
" set clipboard=unnamed
" set clipboard=unnamedplus
set smartindent
set showmatch

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

set backspace=indent,eol,start
set backspace=2
fixdel

func Backspace()
  if col('.') == 1
    if line('.')  != 1
      return  "\<ESC>kA\<Del>"
    else
      return ""
    endif
  else
    return "\<Left>\<Del>"
  endif
endfunc

inoremap <BS> <c-r>=Backspace()<CR>

