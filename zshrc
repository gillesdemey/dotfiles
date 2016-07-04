source ~/.zplug/init.zsh

# load the good parts from oh-my-zsh
zplug "lib/completion",      from:oh-my-zsh
zplug "lib/history",         from:oh-my-zsh
zplug "lib/key-bindings",    from:oh-my-zsh
zplug "plugins/docker",      from:oh-my-zsh

# theme
zplug "dracula/zsh", use:dracula.zsh-theme

# plugins
zplug "tcnksm/docker-alias", use:zshrc
zplug "tj/n",                hook-build:"make install"
zplug "andrewferrier/fzf-z"
zplug "felixr/docker-zsh-completion"
zplug "psprint/history-search-multi-word"

zplug "zsh-users/zsh-syntax-highlighting"

# check for missing plugins and prompt to intall
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# aliases
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias gs="git status --short"
alias gd="git diff --color | diff-so-fancy | less --tabs=4 -RFX"

# rupa/z
. `brew --prefix`/etc/profile.d/z.sh
