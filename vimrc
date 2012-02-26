set number
set nocompatible
syntax enable
set mouse=a
set encoding=utf-8
set showcmd
filetype plugin indent on

set nowrap " Don't wrap lines
set tabstop=2 shiftwidth=2
set expandtab
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

map <leader>t :CommandT<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" Changer de buffer
nnoremap <leader><leader> <c-^>

" On redéfini <Esc>
imap ww <Esc>

" Changement pour gérer les splits
nnoremap <Leader>. <C-W><C-W>
nnoremap <Leader>_ <C-W>_
nnoremap <Leader><Bar> <C-W><Bar>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

set guioptions-=T
set t_Co=256
set background=dark
colorscheme mustang2
set cursorline
:hi CursorLine cterm=NONE
