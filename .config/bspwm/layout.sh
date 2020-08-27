#!/bin/sh
# function linear() {
#   echo “($X + $@) - ($W - 1) * $@” | bc
# }
 
function binary 
  echo “($X * 2) / (2  ($W -1))” | bc
end
 
function pitch
  echo “$X * 0.25 / 0.282” | bc
end
 
function resolution 
  echo “$X * 1680 / 2560” | bc
end
 
bspc control --subscribe | while read line; do
  set X 94
  [[ bspc query –monitors –desktop focused = DVI-1 ]] || set X (pitch)
  set (bspc query –desktop focused –windows | wc -l)
  set G (binary) # alternatively G=$(linear 10)
  [[ $G -lt 1 ]] && set G 1
  bspc config –desktop focused window_gap $G
end
