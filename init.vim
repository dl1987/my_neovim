"init.vim file by dawlap 

"General settings
set number 		"show line numbers
set showmatch		"highlight matching braces
set ignorecase
set smartcase		"enable smart case search

set shiftwidth=4	"number of auto indent spaces
set softtabstop=4	"number of spaces per tab
set autoindent
set smartindent
set expandtab		"tabs are spaces
" set autochdir           "set current directory

let mapleader=','

"searching
set incsearch           "search as characters entered
set hlsearch            "highlight matches
"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"remove trailing whitespaces
nnoremap <C-space> :%s/\s\+$//e<CR>

noremap <leader>sf :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')

    call dein#add('Shougo/denite.nvim',
                \{
                \'on_event':'VimEnter',
                \'hook_post_source':'call plugins#denite#setup#postSource()'
                \})
    call dein#add('ozelentok/denite-gtags',
                \{
                \'on_event':'VimEnter',
                \'hook_post_source':'call plugins#denite_gtags#setup#postSource()'
                \})
    call dein#add('Shougo/defx.nvim',
                \{
                \'on_event':'VimEnter',
                \'hook_post_source':'call plugins#defx#setup#postSource()'
                \})
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-fugitive')
    call dein#add('airblade/vim-gitgutter',
                \{
                \'on_event':'VimEnter',
                \'hook_post_source':'call plugins#gitgutter#setup#postSource()'
                \})
    call dein#add('octol/vim-cpp-enhanced-highlight',
                \{
                \'on_event':'VimEnter',
                \'hook_post_source':'call plugins#vim_cpp_enhanced_highlight#setup#postSource()'
                \})
    call dein#add('gustafj/vim-ttcn',
                \{
                \'on_event':'VimEnter',
                \'hook_post_source':'call plugins#vim_ttcn#setup#postSource()'
                \})
    call dein#add('matfranczyk/highlighter.vim')

    if dein#check_install()
        call dein#update()
        call dein#install()
    endif

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

autocmd BufNewFile,BufRead *.log setfiletype log
autocmd BufNewFile,BufRead *.LOG setfiletype log
autocmd BufNewFile,BufRead *.out setfiletype log

highlight ColorColumn ctermbg=red

nnoremap <space>l :set filetype=log<CR>
nnoremap <silent> <Right> :bn <CR>
nnoremap <silent> <Left> :bp <CR>

function! __vimrc_c_buffers()
    setlocal colorcolumn=120
endfunction

function! __vimrc_ttcn_buffers()
    setlocal colorcolumn=130
    nnoremap <buffer> <F3> <C-]>
    nnoremap <buffer> <F2> <C-T>
    set tags=/var/fpwork/dlapczyn/bts_sc_cplane/tags
endfunction

augroup VimrcBuffersSettingsAutoCmd
    autocmd!
    autocmd Filetype cpp,c  call __vimrc_c_buffers()
    autocmd Filetype ttcn   call __vimrc_ttcn_buffers()
    autocmd BufNewFile,BufRead *_SCT.k3.txt set filetype=log
augroup END

