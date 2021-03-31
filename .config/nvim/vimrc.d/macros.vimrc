" comment macro
let @c = "I## \<Esc>A ##\<Esc>yyPVr#jpVr#"
" macro to join all lines in a file
let @j = ':g/^./ .,/^$/-1 join'

" Simple re-format for minified Javascript
command! UnMinify call UnMinify()
function! UnMinify()
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction
