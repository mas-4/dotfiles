call plug#begin('~/.vim/plugged')

Plug 'machakann/vim-sandwich'                           " alt surround
Plug 'ntpeters/vim-better-whitespace'                   " better whitespace detection
Plug 'godlygeek/tabular'
call plug#end()

" disable highlight after higlight search
nmap <C-C>          :noh<CR>

" disable ex mode
map Q              <Nop>

nnoremap <Leader>r  :source $MYVIMRC<CR>

" White space
map <Leader>ws      :StripWhitespace<CR><CR>

" Autoindent return to loc
map <F7> gg=G<C-o><C-o>

" search
set incsearch hlsearch smartcase ignorecase
