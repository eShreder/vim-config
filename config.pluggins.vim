" => vim-json

let g:vim_json_syntax_conceal = 0

au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=4
    autocmd FileType json set softtabstop=2 tabstop=8
    autocmd FileType json set expandtab
augroup END


" => Nerd Tree

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '^\.git', '.sw.$']

map <C-n> :NERDTreeToggle<CR>


" => Emmit

let g:user_emmet_expandabbr_key='<C-l>'

" => oceanic-next

let g:airline_theme='oceanicnext'

" => CtrlP

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard', 'find %s -type f']

let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" => JSX

let g:jsx_ext_required = 0

" => JS

let g:javascript_plugin_jsdoc = 1
set conceallevel=1

let g:airline#extensions#tabline#enabled = 1

" => TS
let g:typescript_indent_disable = 1

" => eslint

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exec='eslint_d'
" Autofix visual selection with eslint_d:
vnoremap <leader>f :!eslint_d --stdin --fix-to-stdout<CR>gv
