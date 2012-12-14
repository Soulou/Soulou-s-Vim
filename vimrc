set number
set nocompatible
set hidden
syntax enable
set mouse=a
set encoding=utf-8
set showcmd
filetype plugin indent on

set nowrap " Don't wrap lines
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase


" Pathogen plugin management
call pathogen#infect()

let mapleader=','

" CommandT rescan for new or deleted files

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <leader>t :CtrlP<cr>

" Voir les caractères invisibles
nmap <leader>l :set list!<CR>
nmap <F2> :TlistToggle<CR>
nmap <F3> :NERDTreeToggle<CR>

" Remapper le caractère invisible pour la tabulation
set listchars=tab:▸\ ,eol:$

" Changer de buffer
nnoremap <leader><leader> <c-^>

" Changement pour gérer les splits
nnoremap <Leader>. <C-W><C-W>
nnoremap <Leader>_ <C-W>_
nnoremap <Leader><Bar> <C-W><Bar>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <c-s> :!zsh<CR>

set guioptions-=T
set t_Co=256
set background=dark
" colorscheme mustang2
colorscheme desert
set cursorline
:hi CursorLine cterm=NONE
set autowriteall

let g:template_author=system("getent passwd $USER | cut -d ':' -f 5 | tr -d '\n,'")

au BufNewFile,BufRead *.hamlc set ft=haml 

" disable Keyword completion
let g:acp_behaviorKeywordLength = -1
