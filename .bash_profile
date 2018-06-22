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


# HISTCONTROL ignores the duplicates.
export HISTCONTROL=ignoreboth:erasedups
# History command hack.
# -a append a new command into bash_history immediately.
# -n re-read command history.
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a ; history -n"
export HISTIGNORE="top:htop:ls:cd:pwd:s:pwd"
export HISTSIZE=10000
# Go config.
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=~/go
