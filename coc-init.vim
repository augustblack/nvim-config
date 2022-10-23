" see here for tips and any updates on how to configure the tab completion
" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"Close preview window when completion is done.
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


