set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim

" vundle plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'               " vundle itself
Plugin 'ervandew/supertab'                  " supertab
Plugin 'tpope/vim-surround'                 " vim surround for changing surrounding things
Plugin 'tpope/vim-fugitive'                 " vim surround for changing surrounding things
Plugin 'Vimjas/vim-python-pep8-indent'      " pep8 indenting
Plugin 'nvie/vim-flake8'                    " pep8 linter
Plugin 'ntpeters/vim-better-whitespace'     " better whitespace detection
Plugin 'scrooloose/nerdtree'                " screw it, nerdtree
Plugin 'christoomey/vim-tmux-navigator'     " Navigate tmux sessions with vim panes
Plugin 'losingkeys/vim-niji'                " rainbow parentheses for lisp
Plugin 'sjl/tslime.vim'                     " tslime for repl ide feel
Plugin 'vim-scripts/paredit.vim'            " paredit for parentheses thingies
call vundle#end()            " required

autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt    " better lisp indenting
" let mapleader = ","
let maplocalleader="\,"

" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
" }}}


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
"set foldlevel=0
"set foldclose=all

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
" disable highlight after higlight search
nmap <C-C> :noh<CR>

" search highlighting has problems; this overrides it:
hi Search cterm=bold ctermbg=3 ctermfg=8

" undo directory
set undofile                                " set undodir
set undodir=~/.nvim/undodir                 " choose undodir
" these three are supposed to make sure the undodir doesn't get overly full
let s:undos = split(globpath(&undodir, '*'), "\n")
call filter(s:undos, 'getftime(v:val) < localtime() - (60 * 60 * 24 * 90)')
call map(s:undos, 'delete(v:val)')

""""""""""
" Remaps "
""""""""""
" toggle between numbering systems when necessary
nmap <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>
" for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" turn off f1 = help
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>

" macros
let @c = "I## \<Esc>A ##\<Esc>yyPVr#jpVr#"
let @d = ':set syntax=markdownG:r!dateOjyypVr-o- '
let @m = ':set syntax=markdown'
let @j = ':g/^./ .,/^$/-1 join'

iabbrev beginargparse import sys
    \<cr>import io
    \<cr>import argparse
    \<cr>
    \<cr>
    \<cr>if __name__ == '__main__':
    \<cr>parser = argparse.ArgumentParser("")
    \<cr>parser.add_argument('-i', '--input', action='store', type=str,
    \<cr>help="The input file. Defaults to stdin.")
    \<cr>parser.add_argument('-o', '--output', action='store', type=str,
    \<cr>help="The output file. Defaults to stdout.")
    \<cr>args = parser.parse_args()
    \<cr>FIN = io.open(args.input, 'r', encoding='utf-8-sig') if args.input\
    \<cr>else open(args.input, 'rt', encoding='utf-8-sig')
    \<cr>FOUT = sys.stdout if not args.output else open(args.output, 'wt')


" abbreviations
iabbrev yeahdawg 
      \<cr>▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
      \<cr>░░░░░ ░░░░▀█▄▀▄▀██████░▀█▄▀▄▀████▀
      \<cr>░░░░ ░░░░░░░▀█▄█▄███▀░░░▀██▄█▄█▀
