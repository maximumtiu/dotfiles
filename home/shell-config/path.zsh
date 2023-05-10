export PATH=/usr/local/bin:$PATH
export PATH=~/:$PATH
export PATH="/Applications/chromedriver:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}" # Python 3.4, original saved in .bash_profile.pysave
export PATH="/usr/bin/python:$PATH"
#export PATH="/usr/local/opt/llvm/bin:$PATH"
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# for pyenv
# https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Call `nvm use` automatically in a directory with a .nvmrc file
# https://github.com/nvm-sh/nvm#zsh
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
