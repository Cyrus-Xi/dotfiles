" Taken from various sites:
"   http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
"   http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"   https://github.com/jdavis/dotfiles/blob/master/.vimrc
"
" Apparently, for MacVim to recognize mappings using <esc>, <enter>, etc.,
" reloading the file (with <leader>e) isn't enough. I have to quit and then
" re-open for the changes to take effect.

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

" Navigate by visual lines and speed up navigation when capitalized."
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" To conform to vimium
nnoremap U <C-u>
nnoremap D <C-d>

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
" And expand command line with tab
set wildmenu
set wildmode=list:longest
set wildchar=<Tab>

" Make silent but useful
set visualbell
set cursorline
set ttyfast
set ruler

" 1000 undo levels
set undolevels=1000

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

" Change leader to be easier to use
let mapleader = ","

" Sensible search defaults
nnoremap / /\v
vnoremap / /\v
" Case-smart searching
set ignorecase
set smartcase
set gdefault
" Highlight terms dynamically
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

" Easily create blank lines without entering the dreaded insert mode
nnoremap <S-CR> :pu_<Enter>
nnoremap <leader><S-CR> :pu!_<Enter>

" Make opening new tabs more convenient
nnoremap <leader>t <Esc>:tabnew<CR>

" Not sure what these do tbf
nnoremap <tab> %
vnoremap <tab> %

" Longer history
set history=1000

" Don't let lines get too gnarly
set textwidth=79
set colorcolumn=85

"
set formatoptions=qrn1

" Do things right
nnoremap <up> <nop>
nnoremap <down> <np>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"For tabbing
nmap <C-l> gt
nmap <C-h> gT

" Make easier to type commands
nnoremap ; :
nnoremap : ;

" Apparently saves buffer when focus is lost
au FocusLost * :silent! wall

" Toggle invisible characters
nnoremap <leader>i :set list!<cr>

" Alternate way of escaping to normal mode
inoremap jj <ESC>

" Strip all trailing whitespace in file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Quickly reselect just pasted text
nnoremap <leader>v V`]

" Easily edit .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Quickly open new vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

" For splits
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l



