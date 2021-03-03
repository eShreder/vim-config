let g:go_to_file_maps_str = []

function! GoToFile()
    let s:path = @a

    for [reg_str, to_str] in g:go_to_file_maps_str
        let s:path = substitute (s:path, reg_str, to_str, "")
    endfor

    execute "normal e ".s:path
endfunction

vnoremap <leader>gf "ay:call GoToFile()<CR>

