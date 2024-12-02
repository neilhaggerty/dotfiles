################################ VARS #########################################
# Set CLICOLOR if you want Ansi Colors
export CLICOLOR=1
# Set colors
# export TERM=xterm-256color
export EDITOR=hx
bindkey -v
bindkey '^R' history-incremental-search-backward
################################ ENVS #########################################
export HISTSIZE=5000
export STARSHIP_CONFIG=/Users/neil.haggerty/.config/starship/starship.toml
export PYENV_ROOT="$HOME/.pyenv"
export GOPATH="$HOME/go"
export HOMEBREW_BUNDLE_FILE="/Users/neil.haggerty/Resources/Brewfile"
export MYVIMRC="$HOME/.vimrc"
############################### Homebrew ######################################
eval "$(/opt/homebrew/bin/brew shellenv)"
############################### Fast Node Manager (fnm) ######################
eval "$(fnm env --use-on-cd --shell zsh)"
############################## PATH ###########################################
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
PATH="/Library/Frameworks/Python.framework/Versions/3.10/lib/python3.8/site-packages:${PATH}"
export PATH
PATH="/opt/homebrew/bin:${PATH}"
export PATH
PATH="/Users/neil.haggerty/.local/bin:$PATH"
export PATH
# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
# The path for krew https://krew.sigs.k8s.io/ e.g. kubectl krew
PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH
# The path for java
PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH
# The path for postgres.app https://postgresapp.com/
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH
# The path for golang
PATH="/usr/local/go/bin:$HOME/go/bin:$PATH"
export PATH
PATH="$HOME/.npm-global/bin:$PATH"
export PATH
############################## ALIASES ########################################
alias aws-proxy='f(){docker run --name aws-proxy --rm -ti -v ~/.aws:/root/.aws -p 8080:8080 -e AWS_SDK_LOAD_CONFIG=true -e AWS_PROFILE="$1" public.ecr.aws/aws-observability/aws-sigv4-proxy:a3f4ed6 -v};f'
alias cat="bat"
alias checkcpu='top -stats command,cpu,mem -o cpu'
alias checkmem='top -stats command,cpu,mem -o mem'
alias debugpod="kubectl run -i --tty --rm debug-nh --image=alpine --restart=Never -- sh"
alias ku="k9s"
alias kcx="kcs"
alias kns="kcns"
alias ll="eza -al"
alias pon='f(){kubectl get pods --all-namespaces --field-selector spec.nodeName="$1"};f'
alias terradocs='docker run \
    -v $PWD:/module \
    quay.io/terraform-docs/terraform-docs \
    markdown table /module > TERRAFORM.md'
alias tf="terraform"
