src_dir=~/.homesick/repos/dotfiles/home/shell-config

# these aren't loaded dynamically because they should be in a specific order
source $src_dir/path.sh
source $src_dir/env-vars.sh
source $src_dir/aliases.sh
[ -f ~/.bashrc.private ] && source ~/.bashrc.private

# prints all colors for a 256-colored terminal
term_colors() {
  for i in {0..255}; do
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
  done
}

# flash my s65x keyboard, running on QMK firmware
flash-s65() {
  dfu-programmer atmega32u4 erase
  dfu-programmer atmega32u4 flash ~/Dropbox/QMK/s65wiremod.hex
  dfu-programmer atmega32u4 start
}

# flash my hotdox keyboard, running on QMK firmware
# before running, press the flash button on the bottom of the board
flash-hotdox() {
  cd ~/Dropbox/QMK/qmk_firmware
  make hotdox:megantiu
  cp hotdox_megantiu.hex ../hotdox.hex
  dfu-programmer atmega32u4 erase
  dfu-programmer atmega32u4 flash ~/Dropbox/QMK/hotdox.hex
  dfu-programmer atmega32u4 start
}
