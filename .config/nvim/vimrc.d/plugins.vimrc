call plug#begin('~/.vim/plugged')

" Wakatime
Plug 'wakatime/vim-wakatime'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Prettiness
Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'gregsexton/MatchTag'                              " highlight matching html tags
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lepture/vim-jinja'

" Special syntaxes
Plug 'stevearc/vim-arduino'
Plug 'lervag/vimtex'                                    " latex
Plug 'lepture/vim-jinja'                                " jinja

Plug 'MaxMEllon/vim-jsx-pretty'                         " jsx syntax


Plug 'jparise/vim-graphql'                              " graphql syntax
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " better python
Plug 'Vimjas/vim-python-pep8-indent'                    " Python indenting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Prettier
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Simple functionality improvements
Plug 'jiangmiao/auto-pairs'                             " auto closing
Plug 'machakann/vim-sandwich'                           " alt surround
Plug 'christoomey/vim-tmux-navigator'                   " easy navigation in tmux
Plug 'ntpeters/vim-better-whitespace'                   " better whitespace detection
Plug 'scrooloose/nerdtree'                              " nerdtree
Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' " These are a pair, markdown second


" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color
"Plug 'ghifarit53/tokyonight-vim'
Plug 'psliwka/vim-smoothie'                             " some very smooth ass scrolling

" Verboten for bugginess, saved for reminder
" Plug 'sheerun/vim-polyglot'   " Enables autoread and disables swapping
" Plug 'vimwiki/vimwiki'  " Messes up coc completion with tab
call plug#end()


" Separate coc plugins into another file, call it here
source $HOME/.config/nvim/vimrc.d/coc.plugins.vimrc
