" set title not work
" so use BufEnter instead
" set title
function! MyBufEnterWithName()
    :silent !echo -en "\033]0;%:p\a"
endfunction

function! MyBufEnterWithoutName()
    :silent !echo -en "\033]0;%:p:h\a"
endfunction

augroup filetype
    au!
    au BufEnter * if expand('%') != '' 
                \     | :call MyBufEnterWithName()
                \ |else 
                \     | :call MyBufEnterWithoutName()
                \ |endif
augroup END
