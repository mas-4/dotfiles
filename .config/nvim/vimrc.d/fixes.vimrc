" search highlighting has problems; this overrides it:
hi Search cterm=bold ctermbg=3 ctermfg=8


let g:python3_host_prog = '/usr/bin/python3'

" echo g:webdevicons_conceal_nerdtree_brackets
" For NerdtreeGit
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Ignored"   : "😒",
    \ "Unknown"   : "?"
    \ }

" For some reason the command line got doubled
set cmdheight=1

" Disable whitespace highlighting for current line
let g:go_highlight_trailing_whitespace_error=0

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" rainbow brakcets
let g:rainbow_active = 1

"set termguicolors
"let g:tokyonight_style = 'storm'
"let g:tokyonight_enable_italic = 1
"let g:airline_theme = 'tokyonight'
"colorscheme tokyonight
"set guifont=Hack\ Nerd\ Font:h20
"set guifont=FiraCode\ NF:h20


" This gets rid of the nasty _ italic bug in tpope's vim-markdown
" block $$...$$
"syn region math start=/\$\$/ end=/\$\$/
" inline math
"syn match math '\$[^$].\{-}\$'

" actually highlight the region we defined as "math"
"hi link math Statement

let g:vim_markdown_math = 1
