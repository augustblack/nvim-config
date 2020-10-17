" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')
Plug 'ntpeters/vim-better-whitespace' " Trailing whitespace highlighting & automatic fixing
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense Engine, don't forget to do :CocInstall ...
Plug 'mhartington/oceanic-next'  " color
" Plug 'editorconfig/editorconfig-vim'
" Plug 'Shougo/denite.nvim' " dark powered plugin for Neovim/Vim to unite all interfaces.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot' " mother of all syntax highlighting

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

runtime coc-init.vim
runtime airline-init.vim
runtime goyo-init.vim

" color stuff
set t_Co=256 " needed for term color support
set background=dark
try
  colorscheme OceanicNext
catch
  colorscheme slate
endtry

" Auto-reload buffers when files are changed on disk
set autoread
" get rid of scratch
set completeopt-=preview
set encoding=utf-8
set ts=2 sw=2
syntax on
syntax enable
set expandtab
