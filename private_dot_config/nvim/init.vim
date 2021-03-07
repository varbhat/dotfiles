set nocompatible

" Dein 
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('fatih/vim-go')

  call dein#add('mhinz/vim-startify')

  call dein#add('fcpg/vim-fahrenheit')
  call dein#add('thinca/vim-quickrun')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-vinegar')

  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('luochen1990/rainbow')
  call dein#add('tpope/vim-endwise')
  call dein#add('rstacruz/vim-closer')

  call dein#end()
  call dein#save_state()
endif

" Sane Defaults
syntax enable
filetype plugin indent on
colorscheme fahrenheit
set mouse=a
set expandtab
set number
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldenable
set nowrap
set background=dark
set termguicolors
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set modelines=2
set clipboard=unnamedplus
set laststatus=2
set statusline=%F%m%r%h%w%=\ [%Y]\ [%{&ff}]\ [%04l,%04v]\ [%p%%]\ [%L]
highlight Comment cterm=italic

