" Configuration file schwqq 2023

set relativenumber 
set noswapfile
set tabstop=4 
set expandtab
syntax on 
set mouse=a 
set ttyfast 
filetype plugin on 
set nocompatible
set showmatch 
set cursorline
" Highlight current line 
hi CursorLine ctermbg=8 ctermfg=15 "8 = dark gray, 15 = white
hi Cursor ctermbg=15 ctermfg=8

call plug#begin() 

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" TabBar
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'

Plug 'nyoom-engineering/nyoom.nvim'
Plug 'savq/melange-nvim'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rebelot/kanagawa.nvim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'williamboman/mason.nvim', 
call plug#end()

colorscheme kanagawa-dragon
let g:airline_theme='monochrome'

nnoremap <ESC> :q!<Enter>
nnoremap <C-y> :split ~/.config/nvim/init.vim<Enter>
nnoremap <C-s> :w!<Enter>
nnoremap <C-x> :Telescope find_files<Enter>

lua  << EOF
  require("mod")
EOF
