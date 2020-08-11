PROMPT='%F{39}%~ %F{11}%(!.#.>)%f '

alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'

PATH=${PATH}:~/go/bin

autoload -Uz compinit && compinit
