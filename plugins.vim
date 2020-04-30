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
    call dein#add('jiangmiao/auto-pairs')

    if dein#check_install()
        call dein#update()
        call dein#install()
    endif

    call dein#end()
    call dein#save_state()
endif
