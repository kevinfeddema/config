# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load starship prompt if starship is installed
if  [ -x /usr/bin/starship ]; then
    __main() {
        local major="${BASH_VERSINFO[0]}"
        local minor="${BASH_VERSINFO[1]}"

        if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
            source <("/usr/bin/starship" init bash --print-full-init)
        else
            source /dev/stdin <<<"$("/usr/bin/starship" init bash --print-full-init)"
        fi
    }
    __main
    unset -f __main
fi

# Advanced command-not-found hook
source /usr/share/doc/find-the-command/ftc.bash

# Aliases
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias grep='grep --color=auto'
alias grubup="sudo update-grub"
alias hw='hwinfo --short'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias rmpkg="sudo pacman -Rdd"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias upd='/usr/bin/update'
alias vdir='vdir --color=auto'
alias wget='wget -c '

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns `pacman -Qtdq`'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# Vividtheory Aliases

alias vtds="cd ~/Documents/vt-design-system"
alias ui="cd ~/Documents/heyauto/packages/ha-ui"
alias backend="cd ~/Documents/heyauto/packages/yd-backend"
alias buyer="cd ~/Documents/heyauto/packages/yd-buyer"
alias admin="cd ~/Documents/heyauto/packages/ha-admin"
alias dealer="cd ~/Documents/heyauto/packages/ha-dealer"
alias utils="cd ~/Documents/heyauto/packages/ha-utils"
alias ha="cd ~/Documents/heyauto"
alias code-backend="backend && code ."
alias code-ui="ui && code ."
alias code-buyer="buyer && code ."
alias code-admin="admin && code ."
alias code-dealer="dealer && code ."
alias code-utils="utils && code ."
alias code-vtds="vtds && code ."
alias code-ha="ha && code ."
alias clean="ha && yarn bootstrap:clean && yarn build:all"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Rust and Cargo
. "$HOME/.cargo/env"
