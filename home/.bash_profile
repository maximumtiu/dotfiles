PATH=/usr/local/bin:$PATH
export PATH=~/:$PATH
export PATH="/Applications/chromedriver:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}" # Python 3.4, original saved in .bash_profile.pysave
export PATH="/usr/bin/python:$PATH"

# Set terminal to support 256 colors
export TERM=xterm-256color

# Common directory aliases
alias ls="ls -lah"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Because `git` aliases are still too much typing
alias gs="git status -sb"
alias gb="git branch"
alias gco="git checkout"
alias ga="git add"
alias grs="git reset"
alias gc="git commit"
alias gcam="git commit -am"
alias gl="git log"
alias gp="git push"
alias gpo="git push origin"
alias gpl="git pull"
alias gdH="git diff HEAD"
alias gd="git diff"
alias gds="git diff --staged"
alias gre="git rebase"
alias gf="git fetch"
alias gst="git stash"
alias gsl="git stash list"
alias gspop="git stash pop"
alias gundo="git reset --soft HEAD~1"

# Always prefer bundle exec everything
alias be="bundle exec"
alias rake="bundle exec rake"

# Directory aliases for easy navigation
alias code="cd ~/Code"
alias dotfiles="cd ~/.homesick/repos/dotfiles"
alias scripts="cd ~/Code/Scripts"
alias my_site="cd ~/Code/TTS/Rails/my_site"

# Fittery dirs
alias cdfit="cd ~/Documents/Fittery/new_repo/fittery"
alias cdbp="cd ~/Documents/Fittery/bodyprofiler"
alias bodypro="cd ~/Documents/Fittery/bodypro-api"
alias fitbrowser="cd ~/Documents/Fittery/fitbrowser"
alias microsite="cd ~/Documents/Fittery/microsite-boilerplate"
alias fitteryjs="cd ~/Documents/Fittery/fitteryjs"

# Utility commands
alias weather="curl http://wttr.in/atlanta"
alias lunch="ruby ~/Code/Ruby/lunch.rb"

# Making my life a little easier
alias redis="redis-server"
alias pgstart="pg_ctl start -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log"
alias pgstop="pg_ctl stop -D /usr/local/var/postgres"
alias pgdump="~/Code/Scripts/prod_db.sh"
alias html2haml="find . -name \*.erb -print | sed 'p;s/.erb$/.haml/' | xargs -n2 html2haml"
alias tree="find ./ -type d -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# for pyenv
# https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# git exclude
git_exclude() {
  echo $1 >> .git/info/exclude
}

# ls colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# prompt colors
blue="\[\033[36m\]"
purple="\[\033[32m\]\[\033[0;35m\]"
white="\[\033[m\]"
green="\[\033[34m\]\[\033[0;32m\]"
grey="\033[0;37m"

# git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="${blue}\u${white}@${purple}\W ${grey}\T 🌮 ${green}\$(parse_git_branch) ${white}"
