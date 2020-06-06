" These two are "required" by Vundle per the docs but IDK why
set nocompatible                " be iMproved, required by Vundle
filetype off                    " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim

" vundle plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                       " vundle itself
Plugin 'ervandew/supertab'                          " supertab
Plugin 'machakann/vim-sandwich'                     " new vim surround
Plugin 'tpope/vim-fugitive'                         " git integration
Plugin 'Vimjas/vim-python-pep8-indent'              " pep8 indenting
Plugin 'nvie/vim-flake8'                            " pep8 linter
Plugin 'ntpeters/vim-better-whitespace'             " better whitespace detection
Plugin 'scrooloose/nerdtree'                        " screw it, nerdtree
Plugin 'christoomey/vim-tmux-navigator'             " Navigate tmux sessions with vim panes
Plugin 'MaxMEllon/vim-jsx-pretty'                   " jsx syntax
Plugin 'jparise/vim-graphql'                        " graphql syntax
Plugin 'jiangmiao/auto-pairs'                       " auto closing
Plugin 'yegappan/grep'                              " grep
Plugin 'vimwiki/vimwiki'                            " vimwiki
Plugin 'bling/vim-airline'                          " airline
Plugin 'vim-airline/vim-airline-themes'             " airline themes
Plugin 'tbabej/taskwiki'                            " taskwiki
Plugin 'styled-components/vim-styled-components'    " Styled components

call vundle#end()                           " required
