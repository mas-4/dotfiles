" search highlighting has problems; this overrides it:
hi Search cterm=bold ctermbg=3 ctermfg=8

" Import airline fixes
source $HOME/.config/nvim/vimrc.d/airline.vimrc

" Import coc settings and remaps
source $HOME/.config/nvim/vimrc.d/coc.vimrc

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
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" For some reason the command line got doubled
set cmdheight=1

" The vimwiki plugin tries to rewrite coc's tab auto-complete
let g:vimwiki_table_mappings = 0

" Make vimwiki markdown again
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0

" Disable whitespace highlighting for current line
let g:go_highlight_trailing_whitespace_error=0

" Set home dir for notational-fzf-vim
let g:nv_search_paths = ['~/vimwiki/notes']
