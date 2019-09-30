yellow=`tput setaf 3`
green=`tput setaf 2`
white=`tput setaf 15`
reset=`tput sgr0`

line='------------------------------------------------------------------------------------------------------------------------------------'

function step(){
  echo "  $line
  $1

  ${yellow}PRESS ENTER TO CONTINUE OR CTRL-C TO EXIT${reset}
  $line
  "
  read
}

function echol(){
  echo "$1$line----${reset}"
}

function echoc() {
  echol $1
  echo "$1 [$2] $3 ${reset}"
  echol $1
}