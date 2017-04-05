" javascript setting

set comments-=://

" syntastic
let g:syntastic_javascript_checkers = ['eslint']

" set dictionary+=~/my.vim/dictionary/javascript.dict

" supertab
let g:SuperTabContextTextMemberPatterns = []

" tern
let g:tern_request_query = {
  \ 'completions': {
      \ 'includeKeywords': v:true
  \ }
\ }

let g:tagbar_type_javascript = {
    \ 'ctagsbin'  : 'jsctags',
    \ 'ctagsargs' : '--memory=128M -f -'
\ }
