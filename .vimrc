set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on

Plugin 'flazz/vim-colorschemes'
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab 
set softtabstop=4 
set autoindent
let python_highlight_all = 1
set t_Co=256
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
syntax on
set number
set mousehide
set mouse=a
set termencoding=utf-8
set novisualbell
set t_vb=
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1
set wrap
set linebreak
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf8,cp1251
set clipboard=unnamed
set ruler
set hidden
set visualbell t_vb=

set guifont=Monaco:h18
colorscheme oxeded
