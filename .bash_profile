PATH=/usr/local/bin:$PATH
export PATH=~/:$PATH
export PATH="/Applications/chromedriver:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}" # Python 3.4, original saved in .bash_profile.pysave
export PATH="/usr/bin/python:$PATH"

export TERM=xterm-256color

alias ls="ls -lah"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias gs="git status"
alias gb="git branch"
alias gco="git checkout"
alias ga="git add"
alias gr="git reset"
alias gc="git commit"
alias gcam="git commit -am"
alias gl="git log"
alias gp="git push"
alias gpo="git push origin"
alias gdH="git diff HEAD"
alias gd="git diff"
alias gr="git rebase"
alias gf="git fetch"
alias gst="git stash"
alias gsl="git stash list"
alias gspop="git stash pop"

alias rake="bundle exec rake"

alias code="cd ~/Code"
alias cdfit="cd ~/Documents/Fittery/new_repo/fittery"
alias cdtts="cd ~/Code/TTS"
alias cdjs="cd ~/Code/TTS/Javascript"
alias cdsh="cd ~/Code/Scripts"
alias cdbp="cd ~/Documents/Fittery/bodyprofiler"
alias bodypro="cd ~/Documents/Fittery/bodypro-api"
alias fitbrowser="cd ~/Documents/Fittery/fitbrowser"
alias microsite="cd ~/Documents/Fittery/microsite-boilerplate"
alias fitteryjs="cd ~/Documents/Fittery/fitteryjs"
alias my_site="cd ~/Code/TTS/Rails/my_site"

alias weather="curl http://wttr.in/atlanta"
alias lunch="ruby ~/Code/Ruby/lunch.rb"

alias redis="redis-server"
alias pgstart="pg_ctl start -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log"
alias pgstop="pg_ctl stop -D /usr/local/var/postgres"
alias pgdump="~/Code/Scripts/prod_db.sh"
alias html2haml="find . -name \*.erb -print | sed 'p;s/.erb$/.haml/' | xargs -n2 html2haml"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# for pyenv
# https://github.com/yyuu/pyenv#homebrew-on-mac-os-x
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

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
