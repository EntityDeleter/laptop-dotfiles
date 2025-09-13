alias update=/home/sudar/.update.sh
alias sudo="sudo "
alias openssh="ssh -p 39901 "
alias tailssh="ssh "
alias btrfs-assistant='pkexec env WAYLAND_DISPLAY="$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY" XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" QT_QPA_PLATFORM=wayland btrfs-assistant'
alias orange3='conda activate orange3 && QT_QPA_PLATFORM=xcb python -m Orange.canvas'
alias pdf="tdf "
alias cat="mcat "
alias rich="conda activate rich-cli && rich --pager "
alias colorprint="lp -d CanonG3000 -o COlorModel=RGB "
alias blackprint="lp -d CanonG3000 -o raw -o ColorModel=Gray "
alias ffw='fastfetch -c ~/.config/fastfetch/left.jsonc; print -n "\e[H"; fastfetch -c ~/.config/fastfetch/right.jsonc'
alias pingtest="gping 127.0.0.1 192.168.1.1 1.1.1.1 google.com"
alias nix="nix --extra-experimental-features nix-command --extra-experimental-features flakes "
alias wireup="sudo tailscale down; sudo systemctl stop tailscaled; sudo wg-quick up wlanUS1"
alias tailup="sudo wg-quick down wlanUS1; sudo systemctl start tailscaled; sudo tailscale up"
