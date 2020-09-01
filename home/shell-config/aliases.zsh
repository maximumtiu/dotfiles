# Common utility aliases
alias ls="ls -lah"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias grep="grep --color"

# Because `git` aliases are still too much typing
alias gs="git status -sb"
alias gb="git branch"
alias gco="git checkout"
alias ga="git add"
alias gap="git add -p"
alias grs="git reset"
alias gc="git commit"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gl="git log"
alias gp="git push"
alias gpo="git push origin"
alias gpl="git pull"
alias gdH="git diff HEAD"
alias gd="git diff"
alias gds="git diff --staged"
alias gre="git rebase"
alias grem="git rebase -i origin/master"
alias gres="git rebase -i origin/staging"
alias gf="git fetch"
alias gst="git stash"
alias gsl="git stash list"
alias gspop="git stash pop"
alias gundo="git reset --soft HEAD~1"
alias gcp="git cherry-pick"
alias gdlast="git diff HEAD\^ HEAD"
alias gbg="gb | grep $1" # grep the git branch output

# Always prefer bundle exec everything
alias be="bundle exec"
alias rake="bundle exec rake"

# Directory aliases for easy navigation
alias code="cd ~/Code"
alias dotfiles="cd ~/.homesick/repos/dotfiles"
alias scripts="cd ~/Code/Scripts"
alias my_site="cd ~/Code/Rails/my_site"
alias lunch-dir="cd ~/Code/Ruby/lunch"

# Fittery dirs
alias cdfit="cd ~/Documents/Fittery/new_repo/fittery"
alias cdbp="cd ~/Documents/Fittery/bodyprofiler"
alias bodypro="cd ~/Documents/Fittery/bodypro-api"
alias fitbrowser="cd ~/Documents/Fittery/fitbrowser"
alias microsite="cd ~/Documents/Fittery/microsite-boilerplate"
alias fitteryjs="cd ~/Documents/Fittery/fitteryjs"

# WWC dirs
alias website="cd ~/Code/website"
alias zuul="cd ~/Code/zuul"

# BetterUp dirs
alias betterup="cd ~/Code/betterup-app"

# Utility commands
alias weather="curl http://wttr.in/atlanta"
alias lunch="ruby ~/Code/Ruby/lunch/lib/lunch.rb"

# Making my life a little easier
alias redis="redis-server --daemonize yes"
alias pgstart="pg_ctl start -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log"
alias pgstop="pg_ctl stop -D /usr/local/var/postgres"
alias pgdump="~/Code/Scripts/prod_db.sh"
alias html2haml="find . -name \*.erb -print | sed 'p;s/.erb$/.haml/' | xargs -n2 html2haml"
alias repow="touch tmp/restart.txt"
alias powerrr="touch ~/.pow/restart.txt"
alias server="tail -f log/development.log"
alias dev-notes="cat ~/Documents/dev-notes.txt"
alias add_ssh_key="ssh-add -K ~/.ssh/id_rsa"
alias hc="heroku console -a"

# Docker fun
alias dc="docker-compose"
alias dcr="docker-compose run"
alias dce="docker-compose exec"
alias dl="docker-compose logs --tail=10 --follow"
alias dl-web="dl web"
alias dl-fe="dl frontend"
