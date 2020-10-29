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
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
set tabstop=4

" wrap settings and textwidth
set tw=80
set colorcolumn=+1
set nowrap
set ruler

" search
set incsearch               " incremental search
set hlsearch                " highlight search

" for latex
autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!

" filetype js indent
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
