"syntax higlighting
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

" filetype settings
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype markdown setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jinja setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ledger setlocal tw=90 tabstop=2
au BufRead,BufNewFile *.htmx set filetype=jinja
au BufRead /tmp/psql.edit.* set syntax=sql

" Added per Blacksuan advice
" performance tweaks
" set nocursorline
" set nocursorcolumn
" set scrolljump=5
" set lazyredraw
" set synmaxcol=180

" These seem very bad and cause crashing in js files
" set redrawtime=10000
" set re=1
