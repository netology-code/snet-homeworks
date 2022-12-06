port=22222
case "$port" in
    ('80'|'443')
        echo "This is HTTP(S)"
    ;;
    '22')
        echo "This is SSH"
    ;;
    '53')
         echo "And this is DNS"
    ;;
    *)
        echo "I dont know what is that"
    ;;
esac
