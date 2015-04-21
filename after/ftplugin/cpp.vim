" cpp settings

setlocal cinkeys-=:
setlocal fdm=syntax


" let g:ycm_min_num_of_chars_for_completion = 3
" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_complete_in_comments = 1
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_global_ycm_extra_conf = '~/data/github/dotfiles/vim/ycm.py'
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_server_use_vim_stdout = 1
" let g:ycm_server_log_level = 'debug'
" nnoremap <leader>jd :YcmCompleter GoToDefinition<cr>
" nnoremap <leader>jc :YcmCompleter GoToDeclaration<cr>
" nnoremap <leader>js :YcmCompleter GoTo<cr>


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
