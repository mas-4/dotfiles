call plug#begin('~/.vim/plugged')

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Extra syntax
Plug 'styled-components/vim-styled-components'    " Styled components
Plug 'MaxMEllon/vim-jsx-pretty'                   " jsx syntax
Plug 'jparise/vim-graphql'                        " graphql syntax


" Fuzzy Finder (control-p)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Simple functionality improvements
Plug 'machakann/vim-sandwich'
Plug 'christoomey/vim-tmux-navigator'

" Nerdtree stuff
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

" Vimwiki
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'

" Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" Separate coc plugins into another file, call it here
source $HOME/.config/nvim/vimrc.d/coc.plugins.vimrc
