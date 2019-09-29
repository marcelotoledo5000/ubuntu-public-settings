list=(
  'UPDATE_PACKAGES;programs/update_packages.sh;true'
  'REQUIRED_LIBS;programs/required_libs.sh;check_command curl'
  'GIT;programs/git.sh;check_command git'
  'GIT_BASHRC;bashrc/git.sh;check_bashrc functions/git.sh'
  'CHROME;programs/chrome.sh;check_source google-chrome arch=amd64'
  'VSCODE;programs/vscode.sh;check_command code'
  'POSTMAN;programs/postman.sh;check_command postman'
  'GITKRAKEN;programs/gitkraken.sh;check_command gitkraken'
  'SQLITE;programs/sqlite.sh;check_command sqlite3'
  'MYSQL;programs/mysql.sh;check_command mysql'
)