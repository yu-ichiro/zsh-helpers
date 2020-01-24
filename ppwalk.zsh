function ppwalk () {
    local login
    [[ "$1" = "-l" ]]&&login=$1&&shift
    pid=${1:-${$}}
    comm=$(ps -o comm= -p $pid | sed -e 's/.*\///g')
    ppid=$(ps -o ppid= -p $pid | tr -d ' ')
    echo $pid $comm
    if [[ "$ppid" != "0" && ! ( "$login" = "-l" && "$comm" = "login" ) ]];then
        ppwalk $login $ppid
    fi
}
