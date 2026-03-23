[ -t 0 ] || return
export PS1='[\u@\h]$( [ "$(id -u)" -eq 0 ] && echo "#" || echo "$" ) '