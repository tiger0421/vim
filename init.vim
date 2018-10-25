"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/sima/.cache/dein/repos/github.com/Shougo/dein.vim

set background=dark
set number
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

" Required:
if dein#load_state('/home/sima/.cache/dein')
  call dein#begin('/home/sima/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/sima/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
  colorscheme molokai
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

