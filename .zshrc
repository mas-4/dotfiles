for f in ~/.zshrc.d/*; do source $f; done

ZSH_THEME="robbyrussell"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# This is annoying as hell, but my .d files need to be sourced before omz, an
# domz overwrites this particular alias. So I added this here because idc enough
# to fix that. It's elegant enough as it is.
alias l='ls -F'

setopt HIST_IGNORE_SPACE
xbindkeys -p


export PATH="$HOME/.cargo/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

