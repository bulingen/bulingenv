source ./colors.sh

cmd_array=()
description_array=()
usage_array=()
size=0

# usage: addhelp "command" "description" "usage"
function addhelp {
    cmd=$1
    description=$2
    usage=$3
    cmd_array+=($cmd)
    description_array+=($description)
    usage_array+=($usage)
    ((size=size+1))
}

addhelp "helpme" "prints help texts" " "
function helpme {
    i=1
    until [ $i -gt $size ]
    do
        cmd=${cmd_array[$i]}
        description=${description_array[$i]}
        usage=${usage_array[$i]}

        printf '%-30s %-50s %-50s\n' "${cyn}$cmd" "${end}$description" "${yel}$usage"
        ((i=i+1))
    done
}
