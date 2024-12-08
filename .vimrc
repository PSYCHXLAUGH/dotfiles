" Disable compatibility with vi (for Vim-specific features)
set nocompatible

" Disable filetype detection at the start
filetype off

" Add the Vundle plugin manager to runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" Begin Vundle plugin management
call vundle#begin()

" Define plugins to install with Vundle
Plugin 'VundleVim/Vundle.vim'              " Vundle plugin manager itself
Plugin 'tpope/vim-fugitive'                " Git integration plugin
Plugin 'wincent/command-t'                 " Fast file search plugin
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " HTML templating plugin

" End Vundle plugin management
call vundle#end()

" Enable filetype-based plugins and indentation settings
filetype plugin indent on

" Additional plugins
Plugin 'flazz/vim-colorschemes'  " Color scheme plugin

" Set indentation and tab settings
set tabstop=4        " Number of spaces that a tab represents
set shiftwidth=4     " Number of spaces to use for each indentation level
set smarttab         " Use tab settings intelligently
set expandtab        " Use spaces instead of tabs
set softtabstop=4    " Number of spaces per tab in insert mode
set autoindent       " Automatically indent new lines
let python_highlight_all = 1   " Enable syntax highlighting for all Python elements

" Set terminal color support to 256
set t_Co=256

" Automatically remove trailing whitespace when saving Python files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Set smart indentation for Python files
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Hide mouse pointer in normal mode
set mousehide

" Enable mouse support for all modes
set mouse=a

" Set terminal encoding to UTF-8
set termencoding=utf-8

" Disable visual bell (no screen flashing)
set novisualbell

" Disable the terminal bell sound
set t_vb=

" Set backspace behavior to work with indent, EOL, and start of line
set backspace=indent,eol,start

" Allow wrapping of the cursor around lines
set whichwrap+=<,>,[,]

" Display the tab line (the line showing open tabs)
set showtabline=1

" Enable text wrapping
set wrap

" Set line break behavior to break lines at word boundaries
set linebreak

" Disable backup files
set nobackup

" Disable swap files
set noswapfile

" Set file encoding to UTF-8
set encoding=utf-8

" Set the list of file encodings to try
set fileencodings=utf8,cp1251

" Use the system clipboard for copy-paste operations
set clipboard=unnamed

" Display the cursor position in the status line
set ruler

" Allow hidden buffers (files opened in the background)
set hidden

" Set visual bell (no sound, just flashing the screen)
set visualbell t_vb=

" Set GUI font to Monaco with size 18
set guifont=Monaco:h18

" Set color scheme to oxeded
colorscheme oxeded
