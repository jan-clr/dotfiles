vim.cmd [[
    let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-lualatex',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \} 

    let g:vimtex_view_method = 'zathura'
]]
