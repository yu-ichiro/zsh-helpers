function ppwalk () {
    pid=${1:-${$}}
    comm=$(ps -o comm= -p $pid | sed -e 's/.*\///g')
    ppid=$(ps -o ppid= -p $pid | tr -d ' ')
    echo $pid $comm
    if [[ "$ppid" != "0" ]];then
        ppwalk $ppid
    fi
}