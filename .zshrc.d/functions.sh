# function for getting cheat sheats
function cheat() {
    curl cht.sh/$1
}

# Up command, from stackoverflow.  Takes optional number of levels to cd ../
function up(){
    local d=""
    limit=$1
    for ((i=1 ; i <= limit ; i++))
        do
            d=$d/..
        done
    d=$(echo $d | sed 's/^\///')
    if [ -z "$d" ]; then
        d=..
    fi
    cd $d
}

# function for generating .gitignore files
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

# This function allows me to go straight into vimwiki index or interact with the
# git database without changing directory.
function vimwiki() {
    if [[ $# == 0 ]]
    then
        nvim +'VimwikiIndex'
    elif [[ $1 == 'git' ]]
    then
        git -C ~/vimwiki/ ${@:2}
    elif [[ $1 == 'notes' ]]
    then
        ~/vimwiki/notes/generate_index.py
    else
        echo 'Usage: vimwiki [git] [args ...]'
    fi
}


function _jrnl() {
    if [[ $1 == 'git' ]]
    then
        git -C ~/.jrnl/ ${@:2}
    else
        /usr/bin/jrnl ${@:1}
    fi
}

alias jrnl=" _jrnl"

function rrun() {
    rustc $1.rs && ./$1
}
