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

" for plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype off " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
filetype plugin indent on

set t_Co=256
" colorecting colorscheme
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.txt set filetype=text
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal spell textwidth=72
autocmd Filetype text setlocal spell textwidth=72
autocmd BufRead,BufNewFile *.tex setlocal spell textwidth=72

let mapleader = '²'
" spell checking
function! ToggleSpellLang()
  " toggle between en and fr
  if &spelllang =~# 'en'
    :set spelllang=fr
  else
    :set spelllang=en
  endif
endfunction
nnoremap <F10> :setlocal spell!<CR> " toggle spell on or off
nnoremap <F8> :call ToggleSpellLang()<CR> " toggle language

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

" jump line end 
nnoremap ; $

" Left insert mode
inoremap jj <ESC>
filetype off          " required!

" search using ag
nnoremap gs *:Ag<CR> 

" copy in visual mode
vnoremap <C-c> "+y

"vim airline config"
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'

let g:rehash256 = 1
set background=dark
colorscheme molokai
let g:molokai_original = 1

let g:pencil#wrapModeDefault = 'soft'  
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

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
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ocaml_checkers = ['merlin']

" jsx in js files
let g:jsx_ext_required = 0

" vim-latex default target format
let g:Tex_DefaultTargetFormat = 'pdf'
" plaintex to latex
let g:tex_flavor='latex'

" fugitive config
set diffopt+=vertical

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" go syntax-highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"
" set up autocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1

" set up command go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

"GoTestFunc
au Filetype go nnoremap t :GoTestFunc<CR>
" use goimports
let g:go_fmt_command = "goimports"
" use syntastic
let g:syntastic_go_checkers = ['golint', 'govet', 'varcheck']

" rustfmt
let g:rustfmt_autosave = 1

" set up fzf
" access fzf file list faster
nnoremap 0 :FZF<CR>

" merlin for ocaml set up
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" ocaml indent
set rtp^="/home/edouard/.opam/system/share/ocp-indent/vim"
syntax on
