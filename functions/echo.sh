yellow=`tput setaf 3`
green=`tput setaf 2`
white=`tput setaf 15`
reset=`tput sgr0`

function echol(){
  echo "$1-------------------------------------------------------------------------------------------------------------------------------------${reset}"
}

function echoc() {
  echol $1
  echo "$1 $2 ${reset}"
  echol $1
}