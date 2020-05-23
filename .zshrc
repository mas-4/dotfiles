# Environment variables
export EDITOR=/bin/nvim
export CITY='Tarpon Springs'
export HISTORY_IGNORE='(bg|fg|c|ls|pwd|history|exit|make*|* --help)'
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export ZSH="/home/malan/.oh-my-zsh"

# Likewise for ssh connections to the laptop (putty)
if [[ $TERM == "putty" ]]; then
    ZSH_THEME="af-magic"
elif [[ $TERM == "linux" ]]; then
    ZSH_THEME="af-magic"
else
    ZSH_THEME="agnoster"
fi

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

##################
## # Cold open! ##
##################
echo "The password store gpg-id file contains:"
cat ~/.password-store/.gpg-id
fortune -s

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  vi-mode
  git
  history-substring-search
  pass
  command-not-found
)

export KEYTIMEOUT=1
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down


# User configuration

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

#############################
## PERSONAL CONFIGURATIONS ##
#############################

###################
## Bash aliases! ##
###################

###################
## sys overrides ##
###################
alias cp='cp -iv'
alias mv='mv -iv'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias ls='ls --color=auto --group-directories-first -Fh'
alias grep='grep --color=auto'

########
## ls ##
########
alias ll='ls -hAlF'
alias lt='ls -clt'

########################
## other sys commands ##
########################
# one letter commands
alias c='clear'
alias l='ls'
alias se='sudoedit'
alias v='source ./venv/bin/activate'
alias h='history | grep'    # Use like, "h ssh" to see all ssh in your history
alias hd='fc -li 1'

##################
## git commands ##
##################
alias gpm='git pull master'
alias gcm='git checkout master'
alias gs='git status'
alias gd='git diff'
alias gitdiff='git difftool -y -x "colordiff -y -W $COLUMNS" | less -R'

alias gg='git graph'
alias glnp='git --no-pager log --oneline -n30'
alias gitlp='git log --pretty=format:"%Cred%h %Cgreen %cd %Cblue%<(14,trunc)%an %Creset %s %Cred %d %Creset" --graph --date=short -20'

###################################
## overrides for system defaults ##
###################################
alias gcc='gcc -Wall -Werror'
alias python='python3'
alias ipython='ipython3'

############
## tricks ##
############
alias changedfiles="find . -type f -print0 | xargs -0 stat --format '%Z :%z %n' | sort -nr | cut -d: -f2- | head -n 20"
alias rot13="tr 'a-zA-Z' 'n-za-mN-ZA-M'"
alias config='/usr/bin/git --git-dir=/home/malan/.cfg/ --work-tree=/home/malan'
alias linecount='find . -type f -print0 | wc -l --files0-from=-'
alias histstats="history | awk '{CMD[\$2]++;count++;}END { for (a in CMD)print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}' | grep -v './' | column -c3 -s ' ' -t | sort -nr | nl |  head -n10"
alias weather='curl wttr.in/$CITY'
alias shrug='echo -n "¯\_(ツ)_/¯" | xclip -selection clipboard && echo "\"¯\_(ツ)_/¯\" copied to clipboard!"'
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
