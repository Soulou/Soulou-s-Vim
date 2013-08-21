set nocompatible
set hidden
set number
syntax enable
set mouse=a
set encoding=utf-8
set showcmd
filetype plugin on
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
nnoremap <Leader>. <C-W><C-W>
nnoremap <Leader>_ <C-W>_
nnoremap <Leader><Bar> <C-W><Bar>
nnoremap <leader><leader> <c-^>
nnoremap <Leader>v :tabe ~/.vim/vimrc<CR>

map <leader>o :CtrlPBuffer<cr>
map <leader>t :CtrlP<cr>

" Voir les caractères invisibles
nmap <leader>l :set list!<CR>

" CommandT rescan for new or deleted files

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <F2> :TlistToggle<CR>
map <F3> :NERDTreeToggle<CR>
map <F5> :YcmForceCompileAndDiagnostics<CR>a
map <F12> :!zsh<CR>
map! jj <ESC>
map! <F2> <ESC>:TlistToggle<CR>
map! <F3> <ESC>:NERDTreeToggle<CR>
map! <F5> <ESC>:YcmForceCompileAndDiagnostics<CR>a
map! <F12> <ESC>:!zsh<CR>
set pastetoggle=<F4>
map <leader>z zR<CR>
map <leader>a za<CR>

" Remapper le caractère invisible pour la tabulation
set listchars=tab:▸\ ,eol:$

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

set guioptions-=T
set t_Co=256
set background=light
colorscheme summerfruit256
set cursorline
hi CursorLine cterm=NONE
set autowriteall

let g:template_author=system("getent passwd | grep $USER | cut -d':' -f5 | tr -d '\n'")

au BufNewFile,BufRead *.hamlc set ft=haml 

" disable Keyword completion
" let g:acp_behaviorKeywordLength = -1

" Completion after 3 caracters
" let g:acp_behaviorKeywordLength = 3

" Power status line 
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Go language 
set rtp+=$GOROOT/misc/vim 

" Auto reload vimrc
if has("autocmd")
	autocmd BufWritePost vimrc source ~/.vimrc
endif

set hi=150

let g:ycm_key_invoke_completion = '<C-l>'
let g:ycm_min_num_of_chars_for_completion = 1

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:instant_markdown_slow = 1
let g:ycm_confirm_extra_conf = 0
