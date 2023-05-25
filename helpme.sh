source ./colors.sh

helpTexts=()

function addHelp {
    cmd=$1
    description=$2
    usage=$3
    helpTexts+=("${CYAN}${cmd}\t\t${NC}${description}\t\t${YELLOW}${usage}")
}

addHelp "helpme" "prints help texts" "addHelp \"command\" \"description\" \"usage\""
function helpme {
    for str in ${helpTexts[@]}; do
        echo $str
    done
}
