# plugins

# these are supposed to fix slow git completion
#fpath=(~/.zsh $fpath)
__git_files () {
    _wanted files expl 'local files' _files
}

plugins=(
  vi-mode
  git
  gatsby
  history-substring-search
  pass
  command-not-found
)

# History substring search
export KEYTIMEOUT=1
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
