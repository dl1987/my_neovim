function! plugins#defx#setup#postSource()
    noremap <leader>T :Defx<CR>
    autocmd Filetype defx call s:defx_key_mappings()
endfunction

function! s:defx_key_mappings()
    nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
    nnoremap <silent><buffer><expr> l defx#do_action('open')
    nnoremap <silent><buffer><expr> o defx#do_action('open')
    nnoremap <silent><buffer><expr> c defx#do_action('copy')
    nnoremap <silent><buffer><expr> m defx#do_action('move')
    nnoremap <silent><buffer><expr> p defx#do_action('paste')
    nnoremap <silent><buffer><expr> s defx#do_action('split')
    nnoremap <silent><buffer><expr> vs defx#do_action('vsplit')
    nnoremap <silent><buffer><expr> n defx#do_action('new_file')
    nnoremap <silent><buffer><expr> nd defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> d defx#do_action('remove')
    nnoremap <silent><buffer><expr> r defx#do_action('rename')
    nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q defx#do_action('quit')
endfunction
