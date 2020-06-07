" disable highlight after higlight search
nmap <C-C> :noh<CR>

" disable ex mode
:map Q <Nop>

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

" CoC remaps
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
