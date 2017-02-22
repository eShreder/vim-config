" => vim-json

au! BufRead,BufNewFile *.json set filetype=json
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=8
    autocmd FileType json set expandtab
augroup END


" => Nerd Tree

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '^\.git']

map <C-n> :NERDTreeToggle<CR>


" => Emmit

let g:user_emmet_expandabbr_key='<C-l>'

" => oceanic-next

let g:airline_theme='oceanicnext'

" => CtrlP

set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard', 'find %s -type f']

let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

" => JSX

let g:jsx_ext_required=0

" => JS

let g:javascript_plugin_jsdoc = 1
"let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1
