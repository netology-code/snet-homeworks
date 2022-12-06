args(){
 echo $@
 for item in $@; do
   echo $item
 done
}
args 1 4 5 
args 5 7 8 9 10
