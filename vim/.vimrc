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

" save undos to the current file even after close and reopen
set undofile

" MAP LEADER \ to ,
let mapleader = ","

" Tame searching/moving
set gdefault " apply substitutions globally on lines
set incsearch
set showmatch
set hlsearch

" <s-<movement-key>> moves around your splits
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" in normal mode enter splits line down at the cursor and go back to n mode
nnoremap <CR> a<CR><ESC>

" Make long python comment using map for <leader-key>c or ,c
nnoremap <leader>c i'''<CR>'''<C-o>O

" Restore cursor position after yank
" vnoremap y ygv<ESC>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" enter find or search with easymotion plugin
nnoremap <leader>f <leader><leader>f
nnoremap <leader>/ <leader><leader>/

" select text to substitue all occurrances of selected text
xnoremap <leader>s y:%s/<C-r>"/
vnoremap <leader>s y:%s/<C-r>"/

" get to substitution
nnoremap <leader>s :%s/

" clear out highlighting by hitting ', '
nnoremap <leader><space> :noh<cr>

" get reg contents
nnoremap <leader>r :reg<CR>

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
