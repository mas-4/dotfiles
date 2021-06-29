" syntax higlighting
filetype plugin indent on
syntax enable

" miscellaneous
set mouse=a                         " mouse is usable
set showmatch                       " show matching pairs of braces, etc.
set wildmenu
set wildmode=longest:list,full      " longest wildmenu
set showmode                        " show mode in statusbar
set showcmd                         " show command as typed

" folding
set foldmethod=indent

" numbers
set number
set relativenumber

" indenting
set autoindent
set backspace=indent,eol,start
set expandtab smarttab
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent

" wrap settings and textwidth
set tw=80
set colorcolumn=+1
set nowrap
set ruler

" search
set incsearch hlsearch smartcase ignorecase

" filetype js indent
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Added per Blacksuan advice
" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
