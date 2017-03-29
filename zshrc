source ~/.zplug/init.zsh

# load the good parts from oh-my-zsh
zplug "lib/completion",      from:oh-my-zsh
zplug "lib/git",             from:oh-my-zsh
zplug "lib/history",         from:oh-my-zsh
zplug "lib/key-bindings",    from:oh-my-zsh
zplug "plugins/docker",      from:oh-my-zsh
zplug "plugins/grunt",       from:oh-my-zsh, nice:10
zplug "plugins/npm",         from:oh-my-zsh, nice:10

# theme
zplug "sindresorhus/pure", as:theme, use:"*.zsh"

# plugins
zplug "tcnksm/docker-alias", use:zshrc
zplug "tj/n",                hook-build:"make install"
zplug "andrewferrier/fzf-z"
zplug "felixr/docker-zsh-completion"
zplug "psprint/history-search-multi-word"

# zplug "zsh-users/zsh-syntax-highlighting", nice:10

# check for missing plugins and prompt to intall
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

PATH=/usr/local/bin:$PATH

# aliases
alias git="hub"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias gs="git status --short"
alias gp="git pull"
alias gd="git diff --color | diff-so-fancy | less --tabs=2 -RFX"
alias zshconfig="subl ~/.zshrc"
alias bos="bunyan -o short"

# editor
export EDITOR=vim

# rupa/z
. `brew --prefix`/etc/profile.d/z.sh

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# direnv
eval "$(direnv hook zsh)"

# curl — but through a TOR SOCKS proxy
turl(){ curl --socks5-hostname localhost:9050 $@ ; }
export PATH="$HOME/.yarn/bin:$PATH"
# MMake https://github.com/tj/mmake
alias make=mmake

zplug load
