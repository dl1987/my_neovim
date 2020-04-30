"init.vim file by dawlap 
"
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general.vim


"remove trailing whitespaces
nnoremap <C-space> :%s/\s\+$//e<CR>

noremap <leader>sf :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>

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

