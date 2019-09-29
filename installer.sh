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

function without_command() {
  ! [ -x "$(command -v $1)" ]
}

function without_source() {
  PKG_OK=$(cat /etc/apt/sources.list.d/$1.list | grep "$2")
  [ "$PKG_OK" == "" ]
}

function without_bashrc() {
  PKG_OK=$(cat ~/.bashrc | grep "$1")
  [ "$PKG_OK" == "" ]
}

array=(
  'UPDATE_PACKAGES;programs/update_packages.sh;true'
  'REQUIRED_LIBS;programs/required_libs.sh;without_command curl'
  'GIT;programs/git.sh;without_command git'
  'CHROME;programs/chrome.sh;without_source google-chrome arch=amd64'
)

function install(){
  params="PARAMS: $1 | $2 | $3 $4 $5"
  if eval "$3 $4 $5"; then
    echoc ${yellow} "[INIT] - INSTALLING ${white}$1${yellow} - $params"
    bash $2
    echoc ${green}  "[END]  - INSTALLING ${white}$1${yellow} - $params"
  else
    echoc ${green}  "[INFO] - ${white}$1${green} IS ALREADY INSTALLED - $params"
  fi
}

for i in "${array[@]}"; do
  OIFS=$IFS
  IFS=';'
  spo_array=($i)
  IFS=$OIFS
  install ${spo_array[0]} ${spo_array[1]} ${spo_array[2]} ${spo_array[3]} ${spo_array[4]} ${spo_array[5]}
done