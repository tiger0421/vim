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
set clipboard=unnamed,autoselect
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
colorscheme molokai
set t_Co=256

nnoremap <c-b> <c-w>h
nnoremap <c-n> <c-w>l

" Required:
if dein#load_state('/home/sima/.cache/dein')
  call dein#begin('/home/sima/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/sima/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Townk/vim-autoclose')
  call dein#add('itchyny/lightline.vim')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('honza/vim-snippets')
  call dein#add('ujihisa/neco-look')
  call dein#add('w0rp/ale')
  " 保存時のみ実行する
   let g:ale_lint_on_text_changed = 0
  " 表示に関する設定
   let g:ale_sign_error = '△'
   let g:ale_sign_warning = '×'
   let g:airline#extensions#ale#open_lnum_symbol = '('
   let g:airline#extensions#ale#close_lnum_symbol = ')'
   let g:ale_echo_msg_format = '[%linter%]%code: %%s'
   highlight link ALEErrorSign Tag
   highlight link ALEWarningSign StorageClass
  " Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
   nmap <silent> <C-k> <Plug>(ale_previous_wrap)
   nmap <silent> <C-j> <Plug>(ale_next_wrap)

  call dein#add('Shougo/deoplete.nvim')
    let g:deoplete#enable_at_startup = 1
    inoremap <expr><Tab> pumvisible() ? "\<DOWN>" : "\<Tab>"
    inoremap <expr><S-Tab> pumvisible() ? "\<UP>" : "\<S-Tab>"

  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')


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

