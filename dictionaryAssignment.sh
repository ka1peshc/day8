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

echo "******* question 2 *******"
declare -A month
month[Jan]=0
month[Feb]=0
month[Mar]=0
month[Apr]=0
month[May]=0
month[Jun]=0
month[Jul]=0
month[Aug]=0
month[Sep]=0
month[Oct]=0
month[Nov]=0
month[Dec]=0

count=0
while [ $count -lt 50 ]
do
    result=$((RANDOM%13))
    case $result in
    1)
        month[Jan]=$((${month[Jan]}+1));;
    2)
        month[Feb]=$((${month[Feb]}+1));;
    3)
        month[Mar]=$((${month[Mar]}+1));;
    4)
        month[Apr]=$((${month[Apr]}+1));;
    5)
        month[May]=$((${month[May]}+1));;
    6)
        month[Jun]=$((${month[Jun]}+1));;
    7)
        month[Jul]=$((${month[Jul]}+1));;
    8)
        month[Aug]=$((${month[Aug]}+1));;
    9)
        month[Sep]=$((${month[Sep]}+1));;
    10)
        month[Oct]=$((${month[Oct]}+1));;
    11)
        month[Nov]=$((${month[Nov]}+1));;
    12)
        month[Dec]=$((${month[Dec]}+1));;
    esac
    ((count++))
done

for i in ${!month[@]}
do
    echo "Month "$i" brithday count "${month[$i]}
done