syntax enable
filetype plugin indent on

set wrap!
set number
set autoindent
set tabstop=4
":set shiftwidth=4
":set smarttab
":set softtabstop=4
set mouse=a
set noexpandtab

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'neoclide/coc.nvim', {'branch':'release'}

Plug 'kyazdani42/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons'

" Autocompletion
Plug 'https://github.com/neoclide/coc.nvim'  " Coc
Plug 'https://github.com/rust-lang/rust.vim' " rust-vim
Plug 'OmniSharp/omnisharp-vim' " C# autocompletion 

call plug#end()

let g:coc_node_path = 'C:\Program Files\nodejs\node.exe'
" On error 'build/index.js not found, please install dependencies...' run:
" :call coc#util#install()

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac


"nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

":colorscheme jellybeans
":colorscheme delek
":colorscheme NeoSolarized

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
":PlugClean :PlugInstall :UpdateRemotePlugins
"
":CocInstall coc-python
":CocInstall coc-clangd
":CocInstall coc-snippets
":CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.colnr = ' C:'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ' L:'
let g:airline_symbols.crypt = ''
let g:airline_symbols.readonly = ''

" Custom Keybinds
" All Modes:
" Alt-Q - Switch Panes
map œ <C-w>w

map <C-t> <esc>:NERDTreeToggle<return>

" Disable Python2.x
let g:loaded_python_provider = 0

" Warning Suppression
let g:coc_disable_startup_warning = 1


" Custom Cursor
set guicursor+=i:block-Cursor


" Persist Visual Mode after (un-)indenting
vnoremap < <gv
vnoremap > >gv

