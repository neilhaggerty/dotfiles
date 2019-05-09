## Terminal Setup #############################################################
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[01m\]\[ \[\033[01;34m\]\u@\h\[\033[00m\]\[\033[01m\]\]|\[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;34m\]$\[\033[00;33m\]\$(parse_git_branch)\[\033[00m\] > "
# Set CLICOLOR if you want Ansi Colors
export CLICOLOR=1
# Set colors
export TERM=xterm-256color
###############################################################################

## Aliases ####################################################################
alias ll="ls -al"
alias note="vim ~/dev/notes/notes.md"
alias play="cd ~/dev/personal"
alias whatsmyip="curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z<>/ :]//g'"
###############################################################################

## PATH Setup #################################################################
export PATH="/usr/local/sbin:$PATH"                                                
###############################################################################
