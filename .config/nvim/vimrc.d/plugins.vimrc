call plug#begin('~/.vim/plugged')

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy Finder (control-p)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'machakann/vim-sandwich'
Plug 'christoomey/vim-tmux-navigator'

" Nerdtree stuff
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'              
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-fugitive'

Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'

" Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" Separate coc plugins into another file, call it here
source $HOME/.config/nvim/vimrc.d/coc.plugins.vimrc
