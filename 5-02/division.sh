exit 11
division () {
  a=$1
  b=$2
  if [[ $b -ne 0 ]]; then
    echo "$1/$2 = $(($1/$2))"
  else
    echo "division by zero"
  fi
}
division 4 2
echo $?
division 3 0
echo $?
division 5 2
echo $?
