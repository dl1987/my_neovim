"init.vim file by dawlap 

"General settings
set number 		"show line numbers
set showmatch		"highlight matching braces
set smartcase		"enable smart case search

set shiftwidth=4	"number of auto indent spaces
set softtabstop=4	"number of spaces per tab
set smartindent
set expandtab		"tabs are spaces

let mapleader=','

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')

    call dein#add('Shougo/denite.nvim')

    if dein#check_install()
        call dein#update()
        call dein#install()
    endif

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
