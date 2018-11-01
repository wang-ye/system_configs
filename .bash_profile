# Change the terminal prompt. Make the prompt look like this:
# Mon Apr 02 12:06:50 ~/code/my_dir (master) $

# Need to download the git-prompt.sh first.
# curl -o ~/.git-prompt.sh \
#    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='Geoff[\W]$(__git_ps1 "(%s)"): '
fi
export PS1="\[\033[01;32m\]\t \w\$(__git_ps1) \[\033[00m\]\$ "

# On a Linux machine, you may need to source the .bash_profile in .bashrc.
# This loads the .bash_profile for every terminal.
# if [ -f ~/.bash_profile ]; then
#     . ~/.bash_profile
# fi

mkcd () {
    mkdir -p $1
    cd $1
}

alias mkdir="mkdir -p "

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gp='git push'
alias gpf='git push -f'
alias gk='gitk --all&'
alias gx='gitx --all'
alias gac='git add . && git commit -am '
alias rbm="git checkout master && git pull --rebase origin master && git checkout - && git rebase master"
alias rbp="git checkout production && git pull --rebase origin production && git checkout - && git rebase production"


# Go config.
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=~/go

# HISTCONTROL ignores the duplicates.
# # History command hack.
# # -a append a new command into bash_history immediately.
# # -n re-read command history.

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=10000                     # big history
export HISTFILESIZE=10000                 # big history
export HISTIGNORE="top:htop:ls:cd:pwd:s:pwd"
shopt -s histappend                      # append to history, don't overwrite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# https://apple.stackexchange.com/questions/57569/how-to-share-history-between-terminal-tabs
# https://superuser.com/questions/950403/bash-history-not-preserved-between-terminal-sessions-on-mac/985099
export SHELL_SESSION_HISTORY=0           # mac only fix

alias xcode="open -a Xcode"

