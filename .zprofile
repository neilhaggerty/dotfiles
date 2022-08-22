################################ VARS #########################################
# Set CLICOLOR if you want Ansi Colors
export CLICOLOR=1
# Set colors
export TERM=xterm-256color
export EDITOR=vim
################################ PATH #########################################
# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/usr/local/bin/code:${PATH}"
export PATH
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
PATH="/Library/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages:${PATH}"
export PATH
# PATH="/Users/neil.haggerty/Library/Python/3.9/bin:$PATH"
export PATH
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
################################ AWS ##########################################
export AWS_DEFAULT_REGION=us-east-1
export AWS_REGION=us-east-1
################################ ENVS #########################################
export HISTSIZE=5000
################################ ALIASES ######################################
alias ll="exa -al"
alias cat="bat"
alias checkcpu='top -stats command,cpu,mem -o cpu'
alias checkmem='top -stats command,cpu,mem -o mem'
alias debugpod="kubectl run -i --tty --rm debug-nh --image=alpine --restart=Never -- sh"
alias kcx="kcs"
alias kns="kcns"
alias kes="kubectl get events --sort-by='.lastTimestamp'"
alias pon='f(){kubectl get pods --all-namespaces --field-selector spec.nodeName="$1"};f'
alias ponw='f(){watch kubectl get pods --all-namespaces --field-selector spec.nodeName="$1"};f'
alias pendcheck="f(){comm -13 <(k get pods -o wide | grep \"$1\" | awk '{print \$7}' | sort ) <(k get nodes | awk '{print \$1}' | sort)};f"
alias check-sg='f(){aws ec2 describe-network-interfaces --filters Name=group-id,Values="$1"}'
alias terradoc='docker run \
    -v $PWD:/module \
    quay.io/terraform-docs/terraform-docs \
    markdown table /module > TERRAFORM.md'
alias aq="f(){aws \"\$@\" | jq};f"
