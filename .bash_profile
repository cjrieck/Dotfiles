if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

#source ~/.profile

# This is to add local/bin before bin/ for homebrew
export PATH="/usr/local/bin:$PATH:/usr/local/bin"

# added by Anaconda 1.8.0 installer
# export PATH="//anaconda/bin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
