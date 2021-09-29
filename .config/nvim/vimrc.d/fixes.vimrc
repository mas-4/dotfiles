" search highlighting has problems; this overrides it:
hi Search cterm=bold ctermbg=3 ctermfg=8


let g:python3_host_prog = '/usr/bin/python3'

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

" vim markdown
let g:vim_markdown_math = 1 " enable latex
let g:vim_markdown_new_list_item_indent = 2
" fixes for auto inserting quotes
let g:vim_markdown_auto_insert_bullets=0
let g:vim_markdown_new_list_item_indent=0
au FileType markdown setlocal formatlistpat=^\\s*\\d\\+[.\)]\\s\\+\\\|^\\s*[*+~-]\\s\\+\\\|^\\(\\\|[*#]\\)\\[^[^\\]]\\+\\]:\\s | setlocal comments=n:> | setlocal formatoptions+=cn

