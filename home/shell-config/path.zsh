export PATH=/usr/local/bin:$PATH
export PATH=~/:$PATH
export PATH="/Applications/chromedriver:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}" # Python 3.4, original saved in .bash_profile.pysave
export PATH="/usr/bin/python:$PATH"
# nvm
export NVM_DIR="/Users/Megan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# for pyenv
# https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
