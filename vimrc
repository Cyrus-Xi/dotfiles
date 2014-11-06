" Taken from various sites:
"   http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
"   http://stevelosh.com/blog/2010/09/coming-home-to-vim/
"   https://github.com/jdavis/dotfiles/blob/master/.vimrc
"
" Make sure to re-source file (:source %) for changes to take effect.


" ---------- VUNDLE Stuff --------

" iMproved
set nocompatible
" Required for Vundle
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" ctrlp
Plugin 'kien/ctrlp.vim'

" dracula-theme
Plugin 'zenorocha/dracula-theme'

" vim-airline
Plugin 'bling/vim-airline'

" the NERD tree
Plugin 'scrooloose/nerdtree'

" the NERD commenter
Plugin 'scrooloose/nerdcommenter'

" Syntastic
Plugin 'scrooloose/syntastic'

" ultisnips
"Plugin 'SirVer/ultisnips'

" Snippets are separate
"Plugin 'honza/vim-snippets'

" minibufexpl
Plugin 'fholgado/minibufexpl.vim'

" All plugins must be added before the following line
call vundle#end()
" Required
filetype plugin indent on

" Brief Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" See :h vundle for more details or wiki for FAQ


" -------- NON-Vundle Stuff --------

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

" Navigate by visual lines and speed up navigation when capitalized
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" Have vim automatically read updated files
" And save changes to disk when a buffer is switched or closed
set autoread
set autowrite

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
" And ignore files as appropriate
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
" Don't show attention message when extant swap file found
set shortmess+=A

" Clear search highlighting quickly
nnoremap <esc> :noh<return><esc>

" Make all yank/delete/paste operations work with system clipboard without
" having to prefix "* etc.
set clipboard=unnamed

" Jump to matching things quickly
nnoremap <tab> %
vnoremap <tab> %

" Longer history
set history=1000

" Don't let lines get too gnarly
set textwidth=79
set colorcolumn=85

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

" Alternate way of escaping to normal mode
inoremap jk <ESC>

" Shortcut to open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Auto save everything and ignore warnings from untitled buffers
au FocusLost * :silent! wa

" Folding settings
" Fold based on indent
set foldmethod=indent
" Deepest fold is 10 levels
set foldnestmax=10
" Don't fold by default
set nofoldenable
set foldlevel=1
" Save and reload fold state automatically
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" Use semi-colon instead of colon to see command history
nmap q; q:

" For splits
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" Allow saving of files as sudo when I forgot to start vim using sudo
" Explanation here:
" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

" Put those pesky backup and swap files elsewhere
" Of course, make sure to create this dir first
set backupdir=~/.backups
set directory=~/.backups


" ---------- LEADER Commands ----------

" Change leader to be easier to use
let mapleader = ","

" Toggle invisible characters
nnoremap <leader>i :set list!<cr>

" Easily create blank lines without entering the dreaded insert mode
nnoremap <S-CR> :pu_<Enter>
nnoremap <leader><S-CR> :pu!_<Enter>

" Strip all trailing whitespace in file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Make opening new tabs more convenient
nnoremap <leader>t <Esc>:tabnew<CR>

" Quickly reselect just pasted text
nnoremap <leader>v V`]

" Make redo as intuitive as undo
nnoremap <leader>r <C-r>

" Easily maximize split
nnoremap <leader>m <C-W>o

" Easily edit .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Quickly open new vertical split and switch to it
nnoremap <leader>s <C-w>v<C-w>l


" ---------- PLUG-IN Specific ----------

" For CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set local working directory intelligently
let g:ctrlp_working_path_mode = 'ra'

" Exclude weird files/dirs
" First make sure wildignore is being applied
if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.javac,*.pyc,.*,~/Library/* 

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }

" Trigger configuration for ultisnips
" Must take care to make sure compatible with YouCompleteMe
"let g:UltiSnipsExpandTrigger="<CR>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Let UltiSnipsEdit split window
"let g:UltiSnipsEditSplit="vertical"
