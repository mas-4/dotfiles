" comment macro
let @c = "I## \<Esc>A ##\<Esc>yyPVr#jpVr#"
" macro to join all lines in a file
let @j = ':g/^./ .,/^$/-1 join'
