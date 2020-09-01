PROMPT='%F{39}%~ %F{11}%(!.#.>)%f '

alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
alias bc='bc --mathlib'
alias benchcmp='benchstat -delta-test none'

PATH=${PATH}:~/go/bin

autoload -Uz compinit && compinit
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
