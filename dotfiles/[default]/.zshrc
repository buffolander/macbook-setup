# USER CONFIGURATION

# export ARCHFLAGS="-arch x86_64"

export CASE_SENSITIVE="false"

export LANG=en_US.UTF-8

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

plugins=(git zsh-autosuggestions)

autoload -Uz compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' menu select
fpath+=~/.zfunc

eval "$(starship init zsh)"

# ALIASES

alias tf="terraform"

alias k="kubectl"
alias kfunc="func"

alias ls="ls -la"
alias ll="gls -Falh --group-directories-first"

alias node-ps="ps -e|grep node"
alias node-kill="kill -9"
alias node-kill-all="pkill node"

alias python="python3"
alias pip="pip3"

### alias Saml-AWS
# alias aws.in="saml2aws login && aws.set-default-profile"
# alias aws.out="rm ~/.aws/credentials && unset AWS_SESSION_TOKEN AWS_SECURITY_TOKEN AWS_SECRET_ACCESS_KEY AWS_ACCESS_KEY_ID ASSUMED_ROLE"
# alias aws.switch="saml2aws login --skip-prompt --force"
# alias aws.console="saml2aws console"
# alias aws.export-credentials="eval $(saml2aws script)"
# alias aws.set-default-profile="export AWS_PROFILE=saml"

# SECRETS

# None

# $PATH

export PATH=$PATH:/usr/local/share/dotnet/dotnet
export DOTNET_ROOT=/usr/local/share/dotnet/dotnet
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/bin/cue
export PATH=$PATH:$HOME/SonarScanner/bin
export PATH=$PATH:$HOME/.docker/bin
# * add RVM to PATH for scripting. Make sure this is the last PATH variable change *
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$PATH:$HOME/.local/bin

# INITIALIZE TOOLS

# The next line enables shell command completion for 1password
# eval "$(op completion zsh)"; compdef _op op

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# * auto-switch node version in directory with .nvmrc *
# autoload -U add-zsh-hook
# load-nvmrc() {
#   local nvmrc_path="$(nvm_find_nvmrc)"

#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

#     if [ "$nvmrc_node_version" = "N/A" ]; then
#       nvm install
#     elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
#       nvm use
#     fi
#   elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/buffolander/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/buffolander/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/buffolander/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/buffolander/google-cloud-sdk/completion.zsh.inc'; fi
