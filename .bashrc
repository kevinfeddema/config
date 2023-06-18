#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Change default browser
export BROWSER="/usr/bin/google-chrome-stable"

# Vividtheory Aliases
alias ui="cd ~/Documents/heyauto/packages/ha-ui"
alias backend="cd ~/Documents/heyauto/packages/yd-backend"
alias buyer="cd ~/Documents/heyauto/packages/yd-buyer"
alias admin="cd ~/Documents/heyauto/packages/ha-admin"
alias dealer="cd ~/Documents/heyauto/packages/ha-dealer"
alias utils="cd ~/Documents/heyauto/packages/ha-utils"
alias minerva="cd ~/Documents/minerva"
alias ha="cd ~/Documents/heyauto"
alias code-backend="backend && code ."
alias code-ui="ui && code ."
alias code-buyer="buyer && code ."
alias code-admin="admin && code ."
alias code-dealer="dealer && code ."
alias code-utils="utils && code ."
alias code-minerva="minerva && code ."
alias code-ha="ha && code ."
alias clean="ha && yarn bootstrap:clean && yarn build:all"
