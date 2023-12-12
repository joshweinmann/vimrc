call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
call plug#end()

set nocompatible " disable vi compatability

filetype on        " enable file detection
filetype plugin on " detect filetype for plugins
filetype indent on " indent based on filetype
set autoread       " update file when changed outside of vim

set autoindent         " indent to match prev line
set expandtab          " convert tabs to spaces
set smarttab           " use "tabstop" number of spaces for tab
set shiftwidth=4       " shift around x spaces
set tabstop=4          " indent using x spaces
set whichwrap+=<,>,[,] " wrap cursor

set hlsearch  " search highlighting.
set incsearch " incremental search that shows partial matches
set smartcase " auto switch case-sensitive search

set wrap                       " wrap lines
set ruler                      " show cursor position
set wildmenu                   " turn on wild menu
set wildmode=longest:list,full " customize menu for command completion
set number                     " show line numbers
set laststatus=2               " show statusbar

set background=dark " use dark colors
syntax enable       " syntax highlighting
colorscheme torte   " colorscheme

" switch cursor per mode
set ttimeout
set ttimeoutlen=1
set ttyfast
let &t_SI = "\<Esc>[5 q" " insert mode (blinking line)
let &t_EI = "\<Esc>[2 q" " normal mode (solid block)

" autocomplete menu options
set completeopt=menu,menuone,noselect,noinsert,longest
set complete=.,w,b,u,t

" map leader
let mapleader = " "

" copy and paste using system clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y
vnoremap <leader>p "+p
nnoremap <leader>p "+p

" change, show, close buffers
nnoremap gn :bnext<CR>
nnoremap gp :bprevious<CR>

" turn of search highlighting
nnoremap <leader>h :noh<CR>

" file explorer
nnoremap <leader>d :NERDTreeToggle<CR>

" status line
let g:airline#extensions#tabline#enabled = 1

" fuzzy search
nnoremap <leader>f :FZF<CR>
