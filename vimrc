" detect os
if has('win32')
  let g:os#win = 1
  let g:os#mac = 0
  let g:os#unix = 0
elseif has('mac')
  let g:os#mac = 1
  let g:os#win = 0
  let g:os#unix = 0
elseif has('unix')
  let g:os#unix = 1
  let g:os#mac = 0
  let g:os#win = 0
endif

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  set guioptions+=e
  set guioptions-=r
  set guioptions-=L
  set guitablabel=%M\ %t
  set showtabline=1
  set linespace=2
  set noimd
endif

" basic settings ----------------------- {{{
set nocompatible
set backspace=indent,eol,start
set number

" 禁止光标闪烁
set gcr=a:block-blinkon0

set title
set hlsearch
set incsearch
" for indent
set autoindent
" tab and space
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
" fold
set foldmethod=indent
" set foldlevelstart=999
set noswapfile
" text
set textwidth=120
set colorcolumn=120
set linebreak
" set nowrap

set wildmenu
set cmdheight=2

setlocal ruler
" setlocal cursorline
" set cursorcolumn
" }}}

" encoding && fileformat ----------------------------- {{{
" let &termencoding=&encoding
set fileencoding=utf-8
set fileencodings=utf-8,cp936,big5,ucs-bom
" set termencoding=utf-8
" set encoding=utf-8
" }}}


" vundle ---------------------------------------------- {{{
" Setting up Vundle - the vim plugin bundler
" make sure you have git bash installed.
let iCanHazVundle=1
let vundleReadme=expand('~/.vim/bundle/vundle/README.md')
if g:os#win
  let vundleHome = $HOME . "\\.vim\\bundle\\vundle"
  let myVim = "file://" . $HOME . "\\my.vim"
else
  let vundleHome = $HOME . "/.vim/bundle/vundle"
  let myVim = "file://" . $HOME . "/my.vim"
endif
if !filereadable(vundleReadme)
  silent exec "!git clone https://github.com/gmarik/vundle " . vundleHome
  let iCanHazVundle=0
endif

filetype off
let &rtp = &rtp . "," . vundleHome
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin myVim
Plugin 'dyng/ctrlsf.vim'
" Plugin 'mattn/webapi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'suan/vim-instant-markdown.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'ervandew/supertab'
" Plugin 'hushicai/fecs.vim.git'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx.git'
" Plugin 'kana/vim-textobj-function.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'Raimondi/delimitMate.git'
Plugin 'Lokaltog/vim-easymotion.git'
" Plugin 'hushicai/vim-web-indent.git'
Plugin 'groenewege/vim-less.git'
" Plugin 'hushicai/vim-etpl.git'
Plugin 'juvenn/mustache.vim.git'
" Plugin 'wavded/vim-stylus.git'
Plugin 'terryma/vim-multiple-cursors.git'
Plugin 'SirVer/ultisnips.git'
Plugin 'marijnh/tern_for_vim.git'
" Plugin 'vim-php/tagbar-phpctags.vim'
" Plugin 'shawncplus/phpcomplete.vim'
" Plugin 'elzr/vim-json'
Plugin 'majutsushi/tagbar.git'
" Plugin 'chazy/cscope_maps'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'hynek/vim-python-pep8-indent'
if g:os#mac
  Plugin 'rizzatti/dash.vim'
endif
" Plugin 'Valloric/YouCompleteMe.git'
" Plugin 'spf13/PIV'
call vundle#end()
filetype plugin indent on
syntax on
" }}}

let mapleader=","
" 单引号可以不需要转义，如果是双引号，则需要这样"\\"
let maplocalleader='\'

" theme
try
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  set t_Co=256
  set background=dark
  colorscheme solarized
catch
endtry

" cursorline
" highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" completion menu
highlight   Pmenu           ctermfg=0 ctermbg=white
highlight   PmenuSel        ctermfg=01 ctermbg=Gray

" ctrlsf
nnoremap <Leader>sp :CtrlSF<CR>
nmap     <C-L>f <Plug>CtrlSFPrompt
vmap     <C-L>f <Plug>CtrlSFVwordPath
vmap     <C-L>F <Plug>CtrlSFVwordExec
nmap     <C-L>n <Plug>CtrlSFCwordPath
nmap     <C-L>p <Plug>CtrlSFPwordPath
nnoremap <C-L>o :CtrlSFOpen<CR>

" nerdtree
let NERDTreeWinSize = 40
let NERDTreeIgnore = ['\~$', '\.pyc$', 'node_modules']
nmap <leader>nt :NERDTreeToggle<cr>

" nerdcommenter
let NERDSpaceDelims=1

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_matchpairs = "(:),[:],{:}"
" let delimitMate_excluded_regions = "Comment,String"

" easymotion
let g:EasyMotion_leader_key = '\'

" ctrlp
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_extensions = ['buffertag']

" syntastic
" let g:syntastic_debug = 1
" let g:syntastic_debug_file = '~/syntastic.log'
" let g:syntastic_check_on_open = 1
let g:syntastic_mode_map = {"mode": "passive"}
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_wq = 0
nmap <silent> <leader>sc :SyntasticCheck<cr>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nmap <leader>st :SyntasticToggleMode<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" mappings ------------------------------ {{{
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
" shell like moving
inoremap <silent> <c-e> <esc>$a
inoremap <silent> <c-a> <esc>^i
inoremap <silent> <c-f> <right>
inoremap <silent> <c-b> <left>
inoremap <silent> <c-d> <esc><right>xi
" <c-h>已经由delimiteMate实现
" inoremap <silent> <c-h> <esc><left>xa
noremap <leader>ee :e $MYVIMRC<cr>
noremap <Leader>ss :source $MYVIMRC<cr>
noremap <Leader>ww <esc>:w<cr>
inoremap jk <Esc>
set pastetoggle=<F3>
" clear last search highlight
nnoremap <leader><space> :nohlsearch<CR>
cmap w!! w !sudo tee % > /dev/null
" }}}

" tagbar
nnoremap <leader>tt :TagbarToggle<cr>
let g:tagbar_autofocus = 1
" let g:tagbar_sort = 0

" omnifunc
" set completeopt-=preview
set completeopt+=longest
set complete+=k
autocmd Filetype *
      \   if &omnifunc == "" |
      \    setlocal omnifunc=syntaxcomplete#Complete |
      \   endif

" supertab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'
" let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabLongestEnhanced = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:snips_author = 'Shicai Hu'
let g:snips_author_email = 'bluthcy@gmail.com'

" youcompleteme
" let g:ycm_min_num_of_chars_for_completion = 3 
" let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" nnoremap <leader>jd :YcmCompleter GoToDeclaration<cr>

" function! MyTabFunction ()
  " let substr = strpart(getline('.'), 0, col('.') - 1)
  " let substr = matchstr(substr, "[^ \t]*$")
  " if strlen(substr) == 0
    " return "\<tab>"
  " endif
  " return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
" endfunction
" inoremap <tab> <c-r>=MyTabFunction()<cr>
" another omni completion short-cut
" inoremap <c-o> <c-x><c-o>

" ultisnips
" let g:UltiSnipsExpandTrigger = '<c-j>'
" let g:UltiSnipsJumpForwardTrigger = '<c-j>'
" let g:UltiSnipsListSnippets = '<c-l>'

" jsx
let g:jsx_ext_required = 0

" local vimrc
if filereadable('.lvimrc')
  source .lvimrc
endif
