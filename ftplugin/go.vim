" File: go.vim
" Desption:
" Author: Leo Unbekandt
" Last Change: 2013/03/12

if exists('loaded_go')
    finish
endif
let loaded_go=1

set ts=2 sts=2 sw=2

autocmd BufWritePre <buffer> Fmt
