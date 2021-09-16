set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes


" Give more space for displaying messages
set cmdheight=2

set updatetime=50

" Don't pass messages to |ins-completion-menu|
set shortmess+=c

set colorcolumn=80

" Plugin time
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "

" Find files using Telescope command-line sugar
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Netrw
nmap <F5> gh
let g:netrw_altv=1                " Move split views to the right
let g:netrw_preview=1             " Default view (directory name/file name)
let g:netrw_liststyle= 0          " Default view (directory name/file name)
let g:netrw_localrmdir='rm -rf'
