set number
set history=1000
set ruler
set showmatch
set mouse=a
set tw:1337
set si
set hls is
set showcmd
set autoread 
set incsearch
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set nobackup
set nowritebackup
set noswapfile
set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype plugin indent on

set t_Co=16
" colorecting colorscheme
autocmd Filetype gitcommit setlocal spell textwidth=72

nnoremap <silent> _ :exe "resize +1"<CR>
nnoremap <silent> ç :exe "resize -1"<CR>
nnoremap <silent> à :exe "vertical resize -1"<CR>
nnoremap <silent> è :exe "vertical resize +1"<CR>

nnoremap <silent> <C-_> :exe "resize +5"<CR>
nnoremap <silent> <C-ç> :exe "resize -5"<CR>
nnoremap <silent> <C-à> :exe "vertical resize -5"<CR>
nnoremap <silent> <C-è> :exe "vertical resize +5"<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Left insert mode
inoremap jj <ESC>

filetype off          " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let Vundle manage Vundle
"required!

Plugin 'gmarik/vundle'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'xenoterracide/html.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'thoughtbot/vim-rspec'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-scripts/tComment'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'

call vundle#end()

"vim ailine config"
let g:airline_powerline_fonts = 1

set laststatus=2
let g:airline_powerline_fonts = 1

set background=dark " dark | light "
colorscheme solarized 
let g:mustache_abbreviations = 1

set regexpengine=1

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

let g:syntastic_html_tidy_ignore_errors=["proprietary attribute \"ng-", "proprietary attribute \"ion-", "<ion-", "<ng-", "</ng-", "</ion-", "<bbird-", "</bbird-", "trimming empty <i>"]
let g:used_javascript_libs = 'jquery,underscore,angularjs'
let g:syntastic_javascript_checkers = ['jshint']

filetype plugin indent on     " required!
