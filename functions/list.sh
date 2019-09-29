list=(
  # LIBS
  'UPDATE_UPGRADE_LIBS;libs/update_upgrade.sh;false'
  'REQUIRED_LIBS;libs/required.sh;check_command curl'

  # PROGRAMS
  'GIT;programs/git.sh;check_command git'
  'CHROME;programs/chrome.sh;check_source google-chrome arch=amd64'
  'VSCODE;programs/vscode.sh;check_command code'
  'POSTMAN;programs/postman.sh;check_command postman'
  'GITKRAKEN;programs/gitkraken.sh;check_command gitkraken'

  # DATABASES
  'SQLITE;programs/sqlite.sh;check_command sqlite3'
  'MYSQL;programs/mysql.sh;check_command mysql'
  'POSTGRES;programs/postgres.sh;check_command psql'
  'REDIS;programs/redis.sh;check_command redis-server'

  # ASDF
  'ASDF;asdf/asdf.sh;check_command asdf'

  # BASHS
  'GIT_BASHRC;bash/git.sh;check_bashrc functions/git.sh'
)