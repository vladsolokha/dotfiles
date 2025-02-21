"Vlad Solokha vim config

"remove all compatibility to improve functionality
set nocompatible 
" security exploits with modlines in files
set modelines=0

" save undos to the current file even after close and reopen
set undofile

" MAP LEADER \ to space
let mapleader = " "

" Tame searching/moving
set incsearch
set showmatch
set hlsearch

" <s-<movement-key>> moves around your splits
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Restore cursor position after yank
vnoremap y ygv<ESC>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

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
