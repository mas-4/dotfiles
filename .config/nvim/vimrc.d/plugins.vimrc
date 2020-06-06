" These two are "required" by Vundle per the docs but IDK why
set nocompatible                " be iMproved, required by Vundle
filetype off                    " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim

" vundle plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                       " vundle itself

" Autocomplete and text functionality
Plugin 'ervandew/supertab'                          " supertab
Plugin 'jiangmiao/auto-pairs'                       " auto closing
Plugin 'machakann/vim-sandwich'                     " new vim surround

" Syntax
Plugin 'Vimjas/vim-python-pep8-indent'              " pep8 indenting
Plugin 'nvie/vim-flake8'                            " pep8 linter
Plugin 'ntpeters/vim-better-whitespace'             " better whitespace detection
Plugin 'styled-components/vim-styled-components'    " Styled components
Plugin 'MaxMEllon/vim-jsx-pretty'                   " jsx syntax
Plugin 'jparise/vim-graphql'                        " graphql syntax

" Integrations, navigation
Plugin 'scrooloose/nerdtree'                        " screw it, nerdtree
Plugin 'tpope/vim-fugitive'                         " git integration
Plugin 'yegappan/grep'                              " grep
Plugin 'christoomey/vim-tmux-navigator'             " Navigate tmux sessions with vim panes

" vimwiki
Plugin 'vimwiki/vimwiki'                            " vimwiki
Plugin 'tbabej/taskwiki'                            " taskwiki

" bling
Plugin 'bling/vim-airline'                          " airline
Plugin 'vim-airline/vim-airline-themes'             " airline themes


call vundle#end()                           " required
