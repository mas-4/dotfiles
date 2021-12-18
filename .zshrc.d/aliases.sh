###################
## sys overrides ##
###################
alias cp='cp -iv'
alias mv='mv -iv'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias ls='ls --color=auto --group-directories-first -Fh'
alias grep='grep --color=auto'
alias rmf='rm -rfI'

########
## ls ##
########
alias ll='ls -hAlF'
alias lt='ls -clt'
alias l='ls'

########################
## other sys commands ##
########################
# one letter commands
alias c='clear'
alias se='sudoedit'
alias h='history | grep'    # Use like, "h ssh" to see all ssh in your history
alias hd='fc -li 1'
alias gs='git status'
alias jl='jrnl git pull'
alias ipy='ipython'
alias gpr='git submodule foreach --recursive git push'

##########
## yadm ##
##########
alias y='yadm'
alias ys='y s'
alias yl='y pull'
alias yp='y push'
alias ya='y add'
alias yc='y commit --verbose'

##########
## pass ##
##########
alias p='pass'
alias pl='p git pull'
alias pp='p git push'

############
## Python ##
############
alias venv='python -m venv .venv'
alias v='source ./.venv/bin/activate'
alias vv='source ./venv/bin/activate'
alias pu='pip install --upgrade pip'
alias pi='pip install'
alias pupgradeall='pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'
alias newvenv='venv && v && pu'
alias newvenvi='venv && v && pu && pi -r requirements.txt'

#############
## vimwiki ##
#############
alias vimtask='nvim ~/vimwiki/tasks.md'
alias vw='vimwiki'
alias vs='vw git status'
alias vl='vw git pull'
alias vp='vw git push'
alias va='vw git add'
alias vc='vw git commit --verbose'

###################################
## overrides for system defaults ##
###################################
#alias gcc='gcc -Wall -Wextra -O2 -g'

############
## tricks ##
############

# simple utilities
alias changedfiles="find . -type f -print0 | xargs -0 stat --format '%Z :%z %n' | sort -nr | cut -d: -f2- | head -n 20"
# create markdown file with date and time
alias dtouch='touch "$(date +%Y%m%d-%H%M%S).md"'
alias date2='date +%Y%m%d-%H%M%S'
# count all lines recursively
alias linecount='find . -type f -print0 | wc -l --files0-from=-'

# tricks from the net
alias rot13="tr 'a-zA-Z' 'n-za-mN-ZA-M'"
alias weather='curl wttr.in/$CITY'

export spider="192.168.0.152:6801"
alias cancelspider="curl http://${spider}/cancel.json -d project=newscrawler -d"


alias histstats="history | awk '{CMD[\$2]++;count++;}END { for (a in CMD)print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}' | grep -v './' | column -c3 -s ' ' -t | sort -nr | nl |  head -n10"

alias led="hledger --strict"
alias balance="led balance --value now Assets Liabilities"
alias finances="cd ~/documents/wiki/fin && tmux"
