# set UTF-8
export LANG=en_US.UTF-8

PATH=/usr/local/bin:$PATH

source ~/.zplug/init.zsh

# load the good parts from oh-my-zsh
zplug "lib/completion",      from:oh-my-zsh
zplug "lib/history",         from:oh-my-zsh
zplug "lib/key-bindings",    from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions",     defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:3

# rupa/z but zsh native
zplug "agkozak/zsh-z"

zplug load

# aliases
alias gs="git status --short"
alias gp="git pull"
alias gpr="git pull --rebase"
alias kube=`which kubectl`
alias kuebctl="kubectl"
alias fdb="lsof -t -i :9229 | awk 'NR==1{print $1}' | xargs -I % kill -9 %"
alias ll="exa -l"
alias dasel="dasel --color"

# increase ulimit
ulimit -S -n 4096

# editor
export EDITOR="vim"

# brew
export PATH=:/opt/homebrew/bin:$PATH

# curl preference
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# puppeteer chromium
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# direnv
eval "$(direnv hook zsh)"

# curl — but through a TOR SOCKS proxy
turl(){ curl --socks5-hostname localhost:9050 $@ ; }

# MMake https://github.com/tj/mmake
# alias make=mmake

export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# enable starship prompt
eval "$(starship init zsh)"

# set terminal title
function set_win_title(){
    echo -ne "\033]0; $(basename "$PWD") \007"
}
starship_precmd_user_func="set_win_title"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# GO
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# fnm node version manager
# eval "$(fnm env)"

# yarn binaries
# export PATH=$PATH:/Users/gilles/.yarn/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gilles/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gilles/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gilles/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gilles/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Gcloud auth plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
