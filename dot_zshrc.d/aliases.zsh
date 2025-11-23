setopt complete_aliases

alias update=/home/sudar/.update.sh

alias sudo="sudo-rs "
alias visudo="visudo-rs "
alias sudoedit="sudoedit-rs "

alias openssh="ssh -p 39901 "
alias tailssh="ssh "

alias btrfs-assistant='pkexec env WAYLAND_DISPLAY="$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY" XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" QT_QPA_PLATFORM=wayland btrfs-assistant'
alias orange3='conda activate orange3 && QT_QPA_PLATFORM=xcb python -m Orange.canvas'
alias rich="conda activate rich-cli && rich --pager "
alias pdf="tdf "
alias cat="mcat -t vscode -s --report --opts 'center=true,inline=false' -a "
alias icat="mcat -t vscode -s --report --opts 'center=true,inline=false' -a -o interactive "

cl() {
  cd "$1"
  eza --icons=always --color=always --hyperlink
}

alias colorprint="lp -d CanonG3000 -o COlorModel=RGB "
alias blackprint="lp -d CanonG3000 -o raw -o ColorModel=Gray "

alias ffw='fastfetch -c ~/.config/fastfetch/left.jsonc; print -n "\e[H"; fastfetch -c ~/.config/fastfetch/right.jsonc'

alias pingtest="gping 127.0.0.1 192.168.1.1 1.1.1.1 google.com"

alias nix="nix --extra-experimental-features nix-command --extra-experimental-features flakes "

alias wireup="sudo tailscale down; sudo systemctl stop tailscaled; sudo wg-quick up wlanUS1"
alias tailup="sudo wg-quick down wlanUS1; sudo systemctl start tailscaled; sudo tailscale up"

alias ls="eza --icons=always --color=always --hyperlink"
alias la="eza --icons=always --color=always --hyperlink -a"
alias ld="eza --icons=always --color=always --hyperlink -T"
alias lda="eza --icons=always --color=always --hyperlink -T -a"
alias ll="eza --icons=always --color=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative"
alias lla="eza --icons=always --color=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative -a"
alias lld="eza --icons=always --color=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative -T"
alias llda="eza --icons=always --color=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative -T -a"

alias rg="rg --color=auto --heading -n -P -p --trim"
