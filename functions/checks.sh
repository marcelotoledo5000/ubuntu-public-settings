function check_command() {
  ! [ -x "$(command -v $1)" ]
}

function check_source() {
  PKG_OK=$(cat /etc/apt/sources.list.d/$1.list | grep "$2")
  [ "$PKG_OK" == "" ]
}

function check_bashrc() {
  PKG_OK=$(cat ~/.bashrc | grep "$1")
  [ "$PKG_OK" == "" ]
}