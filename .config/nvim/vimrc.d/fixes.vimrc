" search highlighting has problems; this overrides it:
hi Search cterm=bold ctermbg=3 ctermfg=8

" Import airline fixes
source $HOME/.config/nvim/vimrc.d/airline.vimrc

" Import coc settings and remaps
source $HOME/.config/nvim/vimrc.d/coc.vimrc

let g:python3_host_prog='/usr/bin/python3'

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
