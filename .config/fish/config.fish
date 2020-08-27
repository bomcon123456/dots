info='n os wm gtk term pkgs col n' fet.sh 
set -U info 'n os wm gtk term pkgs col n'
alias ls="ls -a"
alias pac-i="doas pacman -S"
alias pac-r="doas pacman -R"
alias tri-i="trizen -S"
alias tri-r="trizen -R"
source /home/devinr/.config/fish/functions/fish_prompt.fish
source /home/devinr/.config/fish/functions/fish_right_prompt.fish
source $HOME/.cargo/env
set fish_greeting
set fish_color_valid_path underline        
set -gx PATH /home/devinr/.local/bin $PATH
