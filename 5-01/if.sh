port=80
if [[ $port == '80' || $port == '443' ]]; then
    echo "This is HTTP(S)";
elif [[ $port == '22' ]]; then
     echo "This is SSH";
elif [[ $port == '53' ]]; then
    echo "And this is DNS";
else
    echo "I dont know what is that";
fi;

