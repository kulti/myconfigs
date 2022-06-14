PROMPT='%F{39}%~ %F{11}%(!.#.>)%f '

# history settings
HISTSIZE=50000
SAVEHIST=10000
setopt incappendhistory
setopt sharehistory

alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
alias bc='bc --mathlib'
alias benchcmp='benchstat -delta-test none'
alias less='less --raw-control-chars'

PATH=${PATH}:~/go/bin

autoload -Uz compinit && compinit
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
export PATH="/usr/local/opt/node@14/bin:$PATH"
