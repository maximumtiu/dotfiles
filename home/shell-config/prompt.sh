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
