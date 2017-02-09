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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_user_command = 'find %s -type f'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
