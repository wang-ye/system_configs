# Change the terminal prompt. Make the prompt look like this:
# Mon Apr 02 12:06:50 ~/code/my_dir (master) $
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
alias go='git checkout '
alias gp='git push'
alias gpf='git push -f'
alias gk='gitk --all&'
alias gx='gitx --all'
alias gac='git add . && git commit -am '
alias rbm="git checkout master && git pull --rebase origin master && git checkout - && git rebase master"


# Go config.
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Go