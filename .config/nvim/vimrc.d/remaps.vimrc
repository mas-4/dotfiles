" disable highlight after higlight search
nmap <C-C>          :noh<CR>

" disable ex mode
:map Q              <Nop>

" turn off f1 = help
nnoremap <F1>       <nop>
inoremap <F1>       <nop>
vnoremap <F1>       <nop>

" toggle between numbering systems when necessary
nmap <F3>           :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

" for split navigation
nnoremap <C-J>      <C-W><C-J>
nnoremap <C-K>      <C-W><C-K>
nnoremap <C-L>      <C-W><C-L>
nnoremap <C-H>      <C-W><C-H>

nmap <C-n>          :NERDTreeToggle<CR>

nnoremap <Leader>r  :source $MYVIMRC<CR>

nnoremap <Leader>p  :Prettier<CR>

" Toggle syntax
nnoremap <Leader>s  :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif <CR>

" Open tex preview
map <Leader>d       :LLPStartPreview<CR><CR>

" White space
map <Leader>ws      :StripWhitespace<CR><CR>

" Tab navigation like Firefox.
nnoremap <C-t>      :tabnew<CR>
inoremap <C-t>      <Esc>:tabnew<CR>
inoremap <C-W>      <Esc>:tabclose<CR>
nnoremap <C-W>      :tabclose<CR>

" Autoindent return to loc
map <F7> gg=G<C-o><C-o>

nnoremap <Leader>i :CocCommand pyright.organizeimports<CR><CR>
