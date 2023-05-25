source ./colors.sh

helpTexts=()
cmd_array=()
description_array=()
usage_array=()
size=0

function addHelp {
    cmd=$1
    description=$2
    usage=$3
    cmd_array+=($cmd)
    description_array+=($description)
    usage_array+=($usage)
    # size+=1
    ((size=size+1))
    # echo $cmd_array
    helpTexts+=("${CYAN}${cmd}\t\t\t${NC}${description}\t\t\t${YELLOW}${usage}")
}

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

addHelp "helpme" "prints help texts" "addHelp \"command\" \"description\" \"usage\"\n"
function helpme {
    # for str in ${helpTexts[@]}; do
    #     printf $str
    # done
    # index=0
    # for str in ${cmd_array[@]}; do
    #     printf $str ${index}
    #     let "index=index+1"
    # done
    printf '%-30s %-50s %-50s\n' "CMD" "DESCRIPTION" "USAGE"
    # printf '%-30s %-50s %-50s\n' "-----" "----------------" "---------"
    # printf '------------------------------------------------------------------------------------------------------\n'


    i=1

    until [ $i -gt $size ]
    do
        # echo i: $i
        # printf ${cmd_array[0]}
        # echo ${cmd_array[$i]}
        cmd=${cmd_array[$i]}
        description=${description_array[$i]}
        usage=${usage_array[$i]}
        # echo $cmd $description $usage
        # printf ${cmd_array[$i]}
        # printf "%40s %40s %40s" $cmd $description $usage "\n"

        printf '%-30s %-50s %-50s\n' "${cyn}$cmd" "${end}$description" "${yel}$usage"
        # printf "%s\n" "Text in ${red}red${end}, white and ${blu}blue${end}."

        # printf "%10s %10d %10s" cmd_array[$i] description_array[$i] usage_array[$i]
        ((i=i+1))
    done
    # echo "stuff stuff stuff" | column -t
    # echo cmd_array[0]
    # 2       0       0           184
    # 2       0       0           184
    # 765311  61423   6454323302  470948
    # 598500  678403  6454288800  1810469
}

function korv {
    # array_size=2
    # stringarray=("korv" "bajs")
    # for (( c=1; c<=5; c++ ))
    for (( i=1;i <size; i++ )); do
        printf "%10s %10d %10s" cmd_array[$i] description_array[$i] usage_array[$i]
    done
}

arr=("apple" "banana" "cherry")
# echo ${arr[0]}
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[3]}
# echo

RED=$(tput setaf 1) GREEN=$(tput setaf 2) YELLOW=$(tput setaf 3)
NC=$(tput sgr0) 
online="${GREEN}online$NC" offline="${RED}offline$NC"

ping -c 1 "$hostname" > /dev/null 2>&1 && state=$online || state=$offline
printf 'Network %-15s: %s\n' "$hostname" "$state"