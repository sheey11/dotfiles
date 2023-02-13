export function proxy() {
    if [[ -z $1 ]]; then
        echo " Usage:   proxy [on|off]"
        return 0
    fi

    if [[ $1 = "on" ]]; then
        export all_proxy=socks5://localhost:7890
        export http_proxy=http://localhost:7890
        export https_proxy=http://localhost:7890
        echo Done, proxy now is on.
    elif [[ $1 = "off" ]]; then
        unset all_proxy
        unset http_proxy
        unset https_proxy
        echo Done, proxy now is off.
    else
        echo Wrong argrument.
        return 1
    fi
}
