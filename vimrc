" Taken from various sites:
"   http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
"   http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"   https://github.com/jdavis/dotfiles/blob/master/.vimrc

filetype off
call pathogen#infect() 
"call pathogen#runtime_append_all_bundles()"
filetype plugin indent on

" IMproved
set nocompatible

" Better safe than sorry etc.
set modelines=0

" Turn on syntax highlighting permanently
syntax on

" Set color scheme
color Dracula

" Set font for MacVim
set gfn=Monaco:h12

" Expand tabs sensibly etc.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" 'avoids unnecessary conversion overhead'
set encoding=utf-8
" Keep lines visible above and below cursor
set scrolloff=5
" Maintain indenting
set autoindent
" Wrap text at word boundaries
set wrap
set linebreak
set showmode
set showcmd
" Hide abandoned buffers
set hidden
" See other options for command completion
set wildmenu
set wildmode=list:longest
" Make silent but useful
set visualbell
set cursorline
set ttyfast
set ruler
" Intuitive backspacing
set backspace=indent,eol,start
set laststatus=2
" For easy jumping around
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
" Case-smart searching
set ignorecase
set smartcase
set gdefault
" Sensible search defaults, e.g., highlight terms dynamically
set incsearch
set showmatch
set hlsearch
" Don't show startup message
set shortmess=I
" Clear search highlighting quickly
nnoremap <esc> :noh<return><esc>

" Make all yank/delete/paste operations work with system clipboard without
" having to prefix "* etc.
set clipboard=unnamed

" Not sure what these do tbf
nnoremap <tab> %
vnoremap <tab> %
" Longer history
set history=1000

set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Do things right
nnoremap <up> <nop>
nnoremap <down> <np>
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
" Toggle invisible characters
nnoremap <leader>i :set list!<cr>

" Ex
"nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"nnoremap <leader>w <C-w>v<C-w>l

"For splits."
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l


