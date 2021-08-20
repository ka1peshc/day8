declare -A rollDice
rollDice[1]=0
rollDice[2]=0
rollDice[3]=0
rollDice[4]=0
rollDice[5]=0
rollDice[6]=0

while [[ ${rollDice[1]} -lt 10 && ${rollDice[2]} -lt 10 && ${rollDice[3]} -lt 10 && ${rollDice[4]} -lt 10 && ${rollDice[5]} -lt 10 && ${rollDice[6]} -lt 10 ]]
do
    diceNumber=$((RANDOM%7))
    case $diceNumber in
    1)
        rollDice[1]=$((${rollDice[1]}+1));;
    2)
        rollDice[2]=$((${rollDice[2]}+1));;
    3)
        rollDice[3]=$((${rollDice[3]}+1));;
    4)
        rollDice[4]=$((${rollDice[4]}+1));;
    5)
        rollDice[5]=$((${rollDice[5]}+1));;
    6)
        rollDice[6]=$((${rollDice[6]}+1));;
    *)
        ;;
    esac
done
echo "${!rollDice[@]}"
echo "${rollDice[@]}"