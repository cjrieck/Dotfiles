syntax on 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

function! Smart_TabComplete()
    let line = getline('.')

    let substr = strpart(line, -1, col('.')+1)

    let substr = matchstr(substr, "[^ \t]*$")
    if (strlen(substr)==0)
        return "\<tab>"
    endif
    let has_period = match(substr, '\.') != -1
    let has_slash = match(substr, '\/') != -1
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"
    elseif ( has_slash )
        return "\<C-X>\<C-F>"
    else
        return "\<C-X>\<C-O>"
    endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>
