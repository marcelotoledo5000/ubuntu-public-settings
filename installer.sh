array=()

yellow=`tput setaf 3`
green=`tput setaf 2`
reset=`tput sgr0`

function echow() {
  echo "${yellow}------------------------ $1 ------------------------${reset}"
}

function echos() {
  echo "${green}------------------------ $1 ------------------------${reset}"
}

function install(){
  if ! [ -x "$(command -v $3)" ]; then
    echow "[INIT] INSTALLING $1"
    bash $2
    echos "[END] INSTALLING $1"
  else
    echow "[INFO] $1 IS ALREADY INSTALLED"
  fi
}

for i in "${array[@]}"; do
  OIFS=$IFS
  IFS=';'
  spo_array=($i)
  IFS=$OIFS
  install ${spo_array[0]} ${spo_array[1]} ${spo_array[2]}
done