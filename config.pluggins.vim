" => incsearch-fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" => ALE
"  linters
let g:js_linters = ['flow-language-server', 'eslint']
let g:ts_linters = ['eslint', 'tsserver', 'tslint']
let g:ale_linters = {
\ "javascript": js_linters,
\ "typescript": ts_linters,
\ }
let g:js_fixers = ['eslint']
let g:ts_fixers = ['eslint', 'tslint']
let g:ale_fixers = {
\ "*": ['remove_trailing_lines', 'trim_whitespace'],
\ "javascript": js_fixers,
\ "typescript": ts_fixers,
\ }
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = "never"

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

let g:ale_typescript_tslint_use_global = 1

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

map <leader>gd :ALEGoToDefinition<CR>
map <leader>gf :ALEGoToTypeDefinition<CR>

" => Nerd Tree

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '^\.git', '.sw.$']
 
map <C-n> :NERDTreeToggle<CR>

" => CtrlP
 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*.gz,*.jpg,build
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard', 'find %s -type f']
let g:ctrlp_cmd = 'CtrlP'
nnoremap <Leader>d :Ex<CR>



" fzf
nnoremap <Leader>f :Files<CR>
" nnoremap <leader>c :call fzf#run({'sink': 'e', 'window': 'rightbelow 20new'})<CR>

let g:fzf_layout = { 'window': 'rightbelow 20new' }
let g:fzf_preview_window = []
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -p .arcignore -g ""'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Conditional'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" /fzf
