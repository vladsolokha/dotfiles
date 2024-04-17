"Vlad Solokha vim config

"remove all compatibility to improve functionality
set nocompatible 

" security exploits with modlines in files

set modelines=0

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

set undofile

let mapleader = " "

" Tame searching/moving
set gdefault " apply substitutions globally on lines
set incsearch
set showmatch
set hlsearch

" <s-<movement-key>> moves around your splits
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>j
nnoremap <C-j> <C-w>k

" in normal mode enter splits line down at the cursor and go back to n mode
nnoremap <CR> i<CR><ESC>l

" Restore cursor position after yank
vnoremap y ygv<ESC>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" select text to substitue all occurrances of selected text
xnoremap <leader>s y:%s/<C-r>"/
vnoremap <leader>s y:%s/<C-r>"/

" get to substitution
nnoremap <leader>s :%s/

" clear out highlighting
nnoremap <ESC> :noh<cr>

" tab indents code and shift tab dedents
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv   
vnoremap <S-Tab> <gv  

" paste in visual mode without copying
xnoremap p pgvy
xnoremap P Pgvy
vnoremap p pgvy
vnoremap P Pgvy

" press S to replace current word with last yanked text, S stands for Stamp (a word)
nnoremap S diw"0P
nnoremap S \"_diwP
