"---------------------------------------------- " Plugin management
"
" Download vim-plug from the URL below and follow the installation
" instructions:
" https://github.com/junegunn/vim-plug
"----------------------------------------------
call plug#begin('~/.vim/plugged')

" Dependencies
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive

" General plugins
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'Shougo/vimproc.vim', {'do' : 'make'}  " Needed to make sebdah/vim-delve work on Vim
Plug 'Shougo/vimshell.vim'                  " Needed to make sebdah/vim-delve work on Vim
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-grepper'

" Language support
Plug 'cespare/vim-toml'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go'
Plug 'lifepillar/pgsql.vim'
Plug 'plasticboy/vim-markdown'
Plug 'tclh123/vim-thrift'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" lint
Plug 'w0rp/ale'

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasiser/vim-code-dark'

call plug#end()

"----------------------------------------------
" General settings
"----------------------------------------------

set number
set history=1000
set ruler
set showmatch
set mouse=a
set cursorline
set tw:1337
set si
set hls is
set showcmd
set autoread 
set incsearch
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set splitright        " vertical window should be split to right
set splitbelow        " Horizontal window should be split to bottom
set autoindent
set smartindent
set smarttab
set nobackup
set nowritebackup
set noswapfile
set nocompatible      " We're running Vim, not Vi!
set syntax=on

filetype off " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype plugin indent on

colorscheme codedark
