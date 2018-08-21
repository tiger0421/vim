"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/sima/.cache/dein/repos/github.com/Shougo/dein.vim
set noswapfile
set background=dark
set number
set hlsearch
nnoremap <Esc><Esc> :noh<CR>
set list
set listchars=tab:>-,extends:<,trail:-
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start
set laststatus=2
let g:lightline = {
    \ 'colorscheme' : 'wombat'
    \ }
set expandtab
set shiftwidth=4
set tabstop=4

nnoremap <c-b> <c-w>h
nnoremap <c-n> <c-w>l

" ### neocomplete
    let g:acp_enableAtStartup=0
    let g:neocomplete#enable_at_startup=1
    let g:neocomplete#enable_smart_case=1
    let g:neocomplete#sources#syntax#min_keyword_lenth=2
    let gLneocomplete#lock_buffer_name_pattern='\*ku\*'
    if !exists('g:neocomplete#keyword_patterns')
       let g:neocomplete#keyword_patterns={}
    endif
    let g:neocomplete#keyword_patterns['default']='\h\w*'
    inoremap <expr><C-g> neocomplete#undo_completion()
    inoremap <expr><C-l> neocomplete#complete_common_string()
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" ### neco-look
    if !exists('g:neocomplete#text_mode_filetypes')
        let g:neocomplete#text_mode_filetypes={}
    endif
    let g:neocomplete#text_mode_filetypes={
        \ 'rst' : 1,
        \ 'markdown' : 1,
        \ 'gitrebase' : 1,
        \ 'gitcommit' : 1,
        \ 'vcs-commit' : 1,
        \ 'hybrid' : 1,
        \ 'text' : 1,
        \ 'help' : 1,
        \ 'tex' : 1,
        \ }

" Required:
if dein#load_state('/home/sima/.cache/dein')
  call dein#begin('/home/sima/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/sima/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('scrooloose/syntastic')
  call dein#add('Townk/vim-autoclose')
  call dein#add('itchyny/lightline.vim')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('honza/vim-snippets')
  call dein#add('ujihisa/neco-look')


  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

