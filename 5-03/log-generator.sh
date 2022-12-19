counter=0
while true; do
    ((counter++))
    RAND=$(($RANDOM%5))
    if [[ $RAND -eq 1 ]]; then
        logger "[INFO] $RANDOM new objects analyzed"
    elif [[ $RAND -eq 3 ]]; then
        logger "[INFO] $(($RANDOM%9+1))$(($RANDOM%9))$(($RANDOM%9)) new objects analyzed"

    elif [[ $RAND -eq 4 ]]; then
        logger "[ERROR] $RANDOM objects not analyzed"
    fi;
    logger "[DEBUG] I work for $counter seconds!"
    sleep 1
done;
