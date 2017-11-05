
" youcompleteme
let g:ycm_confirm_extra_conf = 0

if g:os#win
  let g:ycm_global_ycm_extra_conf = $HOME . '\\my.vim\\conf\\ycm.objc.py'
else
  let g:ycm_global_ycm_extra_conf = $HOME . '/my.vim/conf/ycm.objc.py'
endif

