syntax on 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

function! Smart_TabComplete()
    let line = getline('.') " current line

    let substr = strpart(line, -1, col('.')+1) " from start of current line
                                               " to on character right of cursor
    let substr = matchstr(substr, "[^ \t]*$")  " word until cursor
    if (strlen(substr)==0)                     " if empty string...
        return "\<tab>"
    endif
    let has_period = match(substr, '\.') != -1 " position of period if any
    let has_slash = match(substr, '\/') != -1  " position of slash if any
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"                  " existing text matching
    elseif ( has_slash )
        return "\<C-X>\<C-F>"                  " file matching
    else
        return "\<C-X>\<C-O>"                  " plugin matching
    endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>
