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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"let Vundle manage Vundle
"required!
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'xenoterracide/html.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
Bundle 'thoughtbot/vim-rspec'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'rodjek/vim-puppet'
Bundle 'vim-scripts/tComment'
Plugin 'mustache/vim-mustache-handlebars'
Bundle "pangloss/vim-javascript"
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'

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