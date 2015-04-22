" javascript setting

" syntastic
let g:syntastic_javascript_checkers = ['fecs']
let g:syntastic_javascript_fecs_args = "--reporter=baidu --rule"

set comments-=://

let g:tagbar_type_javascript = {
    \ 'ctagsbin': 'jsctags',
    \ 'ctagsargs': '-f -'
\ }
