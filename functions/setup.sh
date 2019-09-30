function install(){
  params="PARAMS: [$1] $2 | $3 | $4 $5 $6"
  if eval "$4 $5 $6"; then
    echoc ${yellow} $1 "[INIT] - INSTALLING ${white}$2${yellow} - $params"
    bash $3
    echoc ${green} $1 "[INFO] - ${white}$2${green} WAS INSTALLED SUCCESSFULLY - $params"
  else
    echoc ${green} $1 "[INFO] - ${white}$2${green} IS ALREADY INSTALLED - $params"
  fi
}

function setup(){
  counter=0
  for i in "${list[@]}"; do
    OIFS=$IFS
    IFS=';'
    spo_array=($i)
    IFS=$OIFS
    counter=$((counter+1))
    install $counter ${spo_array[0]} ${spo_array[1]} ${spo_array[2]} ${spo_array[3]} ${spo_array[4]} ${spo_array[5]}
  done
}
