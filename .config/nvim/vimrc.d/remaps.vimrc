" disable highlight after higlight search
nmap <C-C> :noh<CR>

" disable ex mode
:map Q <Nop>

" turn off f1 = help
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>

" toggle between numbering systems when necessary
nmap <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

" for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <C-n> :NERDTreeToggle<CR>

nnoremap <Leader>r :source $MYVIMRC<CR>

" Toggle syntax
nnoremap <Leader>s :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif <CR>

" Open tex preview
map <Leader>d :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>

" Copy to primary and clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
"nnoremap <C-S-t> :tabclose<CR>
