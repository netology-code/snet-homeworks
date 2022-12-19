while true; do
  echo 'I can do that all day'
  sleep 1
  if [[ $(($RANDOM%10)) -eq 5 ]]; then
      break;
  fi
done
