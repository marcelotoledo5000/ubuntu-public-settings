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

function without_command() {
  ! [ -x "$(command -v $1)" ]
}

function without_source() {
  PKG_OK=$(cat /etc/apt/sources.list.d/$1.list | grep "$2")
  [ "$PKG_OK" == "" ]
}

array=(
  'UPDATE_PACKAGES;programs/update_packages.sh;'
  'REQUIRED_LIBS;programs/required_libs.sh;'
  'GIT;programs/git.sh;without_command git'
)

function install(){
  # echo "params: $1 $2 $3 $4 $5 | check: $3 $4 $5"
  if eval "$3 $4 $5"; then
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
  install ${spo_array[0]} ${spo_array[1]} ${spo_array[2]} ${spo_array[3]} ${spo_array[4]} ${spo_array[5]}
done