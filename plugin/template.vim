

augroup templates
  au!
  " TODO: 先找文件再找patter
  autocmd BufNewFile *.* silent! execute '0r ../template/' . expand("<afile>:t")
augroup END

