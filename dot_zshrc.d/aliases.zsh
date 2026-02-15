setopt complete_aliases

alias update="/home/sudar/.update.sh"

alias yay="yay --sudo=sudo-rs"

alias cd="z"

alias sudo="sudo-rs "
alias visudo="visudo-rs "
alias sudoedit="sudoedit-rs "

alias openssh="ssh -p 39901 "
alias tailssh="ssh "
alias mosh="mosh --ssh='ssh -p 39901' "

alias cat="mcat -t vscode -s --report --opts 'center=true,inline=false' --hyprlink -a "
alias icat="mcat -t vscode -s --report --opts 'center=true,inline=false' -a -o --hyprlink interactive "

cl() {
  z "$1"
  eza --icons=always --hyperlink
}

alias ffw='kitty zsh -c "fastfetch -c ~/.config/fastfetch/left.jsonc; fastfetch -c ~/.config/fastfetch/right.jsonc; sleep 10m"'

alias pingtest="gping 127.0.0.1 192.168.1.1 1.1.1.1 google.com"

alias ls="eza --icons=always --hyperlink"
alias la="eza --icons=always --hyperlink -a"
alias ld="eza --icons=always --hyperlink -T"
alias lda="eza --icons=always --hyperlink -T -a"
alias ll="eza --icons=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative"
alias lla="eza --icons=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative -a"
alias lld="eza --icons=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative -T"
alias llda="eza --icons=always --hyperlink -l -b --smart-group -h -m -M --time-style=relative -T -a"

alias rg="rga --color=auto --heading -n -P -p --trim"

alias pac-q="pacman -Qq | fzf --preview 'pacman -Qiil {}' --layout=reverse --bind 'enter:execute(pacman -Qiil {} | less)'"
alias pac-s="pacman -Slq | fzf --preview 'pacman -Sii {}' --layout=reverse --bind 'enter:execute(pacman -Sii {} | less)'"
alias pac-e="pacman -Qqe | fzf --preview 'pacman -Qiile {}' --layout=reverse --bind 'enter:execute(pacman -Qiil {} | less)'"

alias scp="rsync -aAhiXEPUzv "

alias sudogui='pkexec env WAYLAND_DISPLAY="$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY" XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" QT_QPA_PLATFORM=wayland '

alias signoff='ARCHWEB_PASSWORD="$(sudo \cat /root/.arch-signoff-password)" signoff '

getsdf() {
  curl -o "/mnt/Data/Avogadro2/Imports/${1}.sdf" "https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/name/${1}/SDF"
}

alias scan='scanimage -d "pixma:G3000_192.168.1.12" -p --resolution=600 -o '
