array=(
  'UPDATE_PACKAGES;programs/update_packages.sh;'
  'REQUIRED_LIBS;programs/required_libs.sh;'
  'GIT;programs/git.sh;git'
)

yellow=`tput setaf 3`
green=`tput setaf 2`
reset=`tput sgr0`

function echosl() {
  echo "${green}--------------------------------------------------------------------------------------------${reset}"
}

function echowl() {
  echo "${yellow}--------------------------------------------------------------------------------------------${reset}"
}

function echow() {
  echowl
  echo "${yellow}                         $1                         ${reset}"
  echowl
}

function echos() {
  echosl
  echo "${green}                         $1                         ${reset}"
  echosl
}

function install(){
  if ! [ -x "$(command -v $3)" ]; then
    echow "[INIT] - INSTALLING $1"

    bash $2

    echos "[END]  - INSTALLING $1"
  else
    echos "[INFO] - $1 IS ALREADY INSTALLED"
  fi
}

for i in "${array[@]}"; do
  OIFS=$IFS
  IFS=';'
  spo_array=($i)
  IFS=$OIFS
  install ${spo_array[0]} ${spo_array[1]} ${spo_array[2]}
done