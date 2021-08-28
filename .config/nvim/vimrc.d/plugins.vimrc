call plug#begin('~/.vim/plugged')

" Wakatime
Plug 'wakatime/vim-wakatime'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'file://'.expand('~/.vim/plugged/coc.nvim')       " For debugging coc

" Prettiness
Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'gregsexton/MatchTag'                              " highlight matching html tags
Plug 'Jorengarenar/vim-MvVis'                           " move visual selection
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lepture/vim-jinja'

" Special syntaxes
Plug 'stevearc/vim-arduino'
Plug 'lervag/vimtex'                                    " latex
Plug 'lepture/vim-jinja'                                " jinja
Plug 'plasticboy/vim-markdown'                          " markdown
Plug 'MaxMEllon/vim-jsx-pretty'                         " jsx syntax


Plug 'jparise/vim-graphql'                              " graphql syntax
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " better python
Plug 'Vimjas/vim-python-pep8-indent'                    " Python indenting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

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
Plug 'psliwka/vim-smoothie'                             " some very smooth ass scrolling
Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes
Plug 'godlygeek/tabular'


" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color
Plug 'ghifarit53/tokyonight-vim'

" Verboten for bugginess, saved for reminder
" Plug 'sheerun/vim-polyglot'
call plug#end()


" Separate coc plugins into another file, call it here
source $HOME/.config/nvim/vimrc.d/coc.plugins.vimrc
