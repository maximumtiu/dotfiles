if [ -f ~/.bashrc.private ]; then
  source ~/.bashrc.private
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
