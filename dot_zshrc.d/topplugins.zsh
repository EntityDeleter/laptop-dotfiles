# Autocompletion Spacing:
zstyle ':autocomplete:*' add-space \
        "*"

# Autosuggestions:
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# Autosuggestion Configuration:
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^[[C' forward-word

# History Search Mode:
#zstyle ':autocomplete:*' default-context history-incremental-search-backward

# Autocompletions:
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Autocomplete Configuration:
zstyle ':autocomplete:*' delay 0.2
zstyle ':autocomplete:*' timeout 0.7
bindkey              '^I'         menu-select
bindkey "$terminfo[kcbt]" menu-select
bindkey -M menuselect              '^I'         menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete
#bindkey -M menuselect  '^[[D' .backward-char  '^[OD' .backward-char
#bindkey -M menuselect  '^[[C'  .forward-char  '^[OC'  .forward-char
#bindkey -M menuselect '^M' .accept-line
#bindkey -M menuselect '\r' .accept-line

# Additional Autocomplete Definitions:
fpath=(usr/share/zsh/site-functions/ $fpath)
