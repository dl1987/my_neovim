function! plugins#vim_cpp_enhanced_highlight#setup#postSource()
    let g:cpp_class_scope_highlight = 1
    let g:cpp_member_variable_highlight = 1
    let g:cpp_class_decl_highlight = 1
    let g:cpp_experimental_simple_template_highlight = 1
    let c_no_curly_error=1
endfunction

