# prompt colors
blue="%F{81}%"
purple="%F{165}%"
pink="%F{213}%"
white="%F{15}%"
green="%F{118}%"
teal="%F{49}%"
grey="%F{7}%"

# prompt components
user="%n"
current_dir="%c"
current_time="%t"

# git branch in prompt
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="${blue}\%n${white}\@${pink}\%c ${grey}\%t 🌮${teal} $(parse_git_branch)%\ ${grey}"
