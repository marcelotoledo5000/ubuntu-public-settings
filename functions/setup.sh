function install(){
  params="PARAMS: $1 | $2 | $3 $4 $5"
  if eval "$3 $4 $5"; then
    echoc ${yellow} "[INIT] - INSTALLING ${white}$1${yellow} - $params"
    bash $2
    echoc ${green}  "[END]  - INSTALLING ${white}$1${green} - $params"
  else
    echoc ${green}  "[INFO] - ${white}$1${green} IS ALREADY INSTALLED - $params"
  fi
}

function setup(){
  for i in "${array[@]}"; do
    OIFS=$IFS
    IFS=';'
    spo_array=($i)
    IFS=$OIFS
    install ${spo_array[0]} ${spo_array[1]} ${spo_array[2]} ${spo_array[3]} ${spo_array[4]} ${spo_array[5]}
  done
}
