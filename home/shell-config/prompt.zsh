# prompt colors
blue="%F{14}%"
purple="%F{165}%"
pink="%F{13}%"
white="%F{15}%"
green="%F{50}%"
teal="%F{49}%"
grey="%F{7}%"

# prompt components
user="%n"
current_dir="%c"
current_time="%t"

# Load version control info
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

setopt PROMPT_SUBST
export PROMPT='${blue}\%n${white}\@${pink}\%c${grey}\%t 🌮 ${teal} ${vcs_info_msg_0_}%\ ${grey}'
