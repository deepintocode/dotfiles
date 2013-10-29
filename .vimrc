set nocompatible                    " This must be first. Use Vim Settings!"

"""""""""""""""""""""""""""""""""""""""""""""""
"==========> General Configuration <=========="
"""""""""""""""""""""""""""""""""""""""""""""""

set number                          " Show line numbers
set showcmd                         " Show incomplete commands at the bottom
set history=1000                    " Keep longer history
set hidden                          " Manage buffers effectively
set scrolloff=8                     " Maintain more context around cursor
filetype off                        " Required for Vundle
syntax on                           " Turn on syntax highlighting
set incsearch                       " Search incrementally
set hlsearch                        " Highlight search results
set ignorecase                      " Case-smart searching
set smartcase                       " Case-smart searching
colorscheme wombat256               " Set the colorscheme

"""""""""""""""""""""""""""""""""""""""""""""""
"================> Visual <==================="
"""""""""""""""""""""""""""""""""""""""""""""""

" set background=dark
" hi CursorLine  term=none cterm=none ctermbg=0 " Adjust cursorline colour
set cul                             " Highlight current line
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""
"==========> Text, Tab and Indent <==========="
"""""""""""""""""""""""""""""""""""""""""""""""

set expandtab                       " Use spaces instead of tabs
set smarttab                        " Use smart tabs
set shiftwidth=4                    " 1 tab = 4 spaces
set tabstop=4                       " 1 tab = 4 spaces
set lbr                             " Linebreak on 500 characters
set tw=500                          " Linebreak on 500 characters
set ai                              " Auto indent
set si                              " Smart indent
set wrap                            " Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""
"=============> Mapping(s) <=================="
"""""""""""""""""""""""""""""""""""""""""""""""

nnoremap ' `
nnoremap ` '
nnoremap <C-e> 3<C-e>               " Scroll the viewport faster
nnoremap <C-y> 3<C-y>               " Scroll the viewport faster
let mapleader=","                   
inoremap jj <Esc>                   " Remap jj  to Esc in insert mode 
nnoremap <Leader>c :set cursorcolumn!<CR> " Highlight current row toggle"
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
"================> Vundle <==================="
"""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required! Let Vundle manage Vundle
Bundle 'gmarik/vundle'              

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""
"================> Airline <=================="
"""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts=1
set fillchars+=stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""
"==========> Turn Off Swap Files <============"
"""""""""""""""""""""""""""""""""""""""""""""""

set noswapfile
set nobackup
set nowb
