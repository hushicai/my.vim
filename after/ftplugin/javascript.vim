" javascript setting

" syntastic
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_fecs_args = '--reporter=baidu --rule'

set comments-=://

set dictionary+=~/.vim/bundle/my.vim/dictionary/javascript.dict

let g:tagbar_type_javascript = {
    \ 'ctagsbin'  : 'jsctags',
    \ 'ctagsargs' : '--memory=128M -f -'
\ }
