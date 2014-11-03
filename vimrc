"Taken from various sites:
"http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
"http://stevelosh.com/blog/2010/09/coming-home-to-vim/

filetype off
call pathogen#infect() 
"call pathogen#runtime_append_all_bundles()"
filetype plugin indent on

set nocompatible

set modelines=0

"Turn on syntax highlighting permanently."
syntax on

" Set color scheme"
color Dracula

" Set font for MacVim"
set gfn=Monaco:h12

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" }}}

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Navigate by visual lines and speed up navigation when capitalized."
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

"For tabbing."
nmap <C-l> gt
nmap <C-h> gT

" Make easier to type commands."
nnoremap ; :

au FocusLost * :silent! wall
" Toggle [i]nvisible characters
nnoremap <leader>i :set list!<cr>

nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w <C-w>v<C-w>l

"For splits."
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l


