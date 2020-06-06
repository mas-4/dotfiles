" undo directory
set undofile                                " set undodir
set undodir=~/.nvim/undodir                 " choose undodir
" these three are supposed to make sure the undodir doesn't get overly full
let s:undos = split(globpath(&undodir, '*'), "\n")
call filter(s:undos, 'getftime(v:val) < localtime() - (60 * 60 * 24 * 90)')
call map(s:undos, 'delete(v:val)')
