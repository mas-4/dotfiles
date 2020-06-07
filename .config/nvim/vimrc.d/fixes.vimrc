" search highlighting has problems; this overrides it:
hi Search cterm=bold ctermbg=3 ctermfg=8

" Import airline fixes
source $HOME/.config/nvim/vimrc.d/airline.vimrc
source $HOME/.config/nvim/vimrc.d/coc.vimrc

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
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

