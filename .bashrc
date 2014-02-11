
##
# Your previous /Users/Clayton/.bash_profile file was backed up as /Users/Clayton/.bash_profile.macports-saved_2013-02-11_at_16:02:03
##

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3-8
}
function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf " [%s]" $branch; fi
}

# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=$PATH:/usr/local/heroku/bin/:usr/local/bin:/opt/local/bin:/opt/local/sbin:/Users/Clayton/.rvm/gems/ruby-1.9.3-p362/bin:/Users/Clayton/.rvm/gems/ruby-1.9.3-p362@global/bin:/Users/Clayton/.rvm/rubies/ruby-1.9.3-p362/bin:/Users/Clayton/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin
# export PS1="\033[95m\033[1m\w\033[0m \n\033[96m❯\033[0m "

export PS1="\033[95m\033[1m\w\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\] \n\033[96m❯\033[0m "
# APPS
# ------------------------------------------------------------------------------
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias itunes='open -a iTunes'
alias chrome='open -a Google\ Chrome'
alias xcode='open -a Xcode'
# ------------------------------------------------------------------------------

alias ..='cd ..'
alias repos='cd ~/Desktop/Repos/'
# GIT COMMANDS
# -------------------------------
alias clone='git clone'
alias pull='git pull'
alias push='git push'
alias commit='git commit'
alias add='git add'
alias all='git add . -v'
alias checkout='git checkout'
alias status='git status'
# -------------------------------
# SSH Aliases
alias anubis='ssh Clayton@anubis'
alias minke='ssh barbara@minke.wheatoncollege.edu'
#--------------------------------

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
