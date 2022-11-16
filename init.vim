
call plug#begin('~/.local/share/nvim/plugged')
" lsp-zero: https://github.com/VonHeikemen/lsp-zero.nvim 
" LSP Support,
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'VonHeikemen/lsp-zero.nvim'


" my personall plugs
Plug 'ntpeters/vim-better-whitespace' " Trailing whitespace highlighting & automatic fixing
Plug 'mhartington/oceanic-next'  " color
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot' " mother of all syntax highlighting

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'rhysd/vim-fixjson', { 'lazy' : 1, 'autoload' : { 'filetypes' : 'json' }}


Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

call plug#end()

try
  colorscheme OceanicNext
catch
  colorscheme slate
endtry


" Auto-reload buffers when files are changed on disk
set autoread

" get rid of scratch
" set completeopt-=preview
set encoding=utf-8
set ts=2 sw=2
syntax on
syntax enable
set expandtab

if executable('volta')
  let g:node_host_prog = trim(system("volta which neovim-node-host"))
endif

runtime airline-init.vim
runtime goyo-init.vim
runtime typescript-init.vim

" Autofix entire buffer with eslint_d:
nnoremap <leader>f mF:%!eslint_d --stdin --fix-to-stdout<CR>`F

lua <<EOF
require("trouble").setup({
  position = "bottom"
})

require('mason.settings').set({
  ui = {
    border = 'rounded'
  }
})
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
EOF
