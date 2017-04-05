" cpp settings

setlocal cinkeys-=:
setlocal fdm=syntax
set comments-=://


" youcompleteme
let g:ycm_confirm_extra_conf = 0

if g:os#win
  let g:ycm_global_ycm_extra_conf = $HOME . '\\my.vim\\conf\\ycm.py'
else
  let g:ycm_global_ycm_extra_conf = $HOME . '/my.vim/conf/ycm.py'
endif

" cscope
" set cscopequickfix=s-,c-,d-,i-,t-,e-
" set cst
" if filereadable("cscope.out")
    " cs add cscope.out
" endif
" " 's'   symbol: find all references to the token under cursor
" nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" " 'g'   global: find global definition(s) of the token under cursor
" nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" " 'c'   calls:  find all calls to the function name under cursor
" nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" " 't'   text:   find all instances of the text under cursor
" nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" " 'e'   egrep:  egrep search for the word under cursor
" nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" " 'f'   file:   open the filename under cursor
" nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" " 'i'   includes: find files that include the filename under cursor
" nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" " 'd'   called: find functions that function under cursor calls
" nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
