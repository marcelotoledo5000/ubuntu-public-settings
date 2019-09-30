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
  'ERLANG_22.1.1;asdf/erlang/v22.1.1.sh;check_asdf erlang 22.1.1'
  'ELIXIR_1.9.1;asdf/elixir/v1.9.1.sh;check_asdf elixir 1.9.1'
  'RUST_1.37.0;asdf/rust/v1.37.0.sh;check_asdf rust 1.37.0'
  'NODEJS_10.16.0;asdf/nodejs/v10.16.0.sh;check_asdf nodejs 10.16.0'
  'RUBY_2.2.10;asdf/ruby/v2.2.10.sh;check_asdf ruby 2.2.10'
  'RUBY_2.5.1;asdf/ruby/v2.5.1.sh;check_asdf ruby 2.5.1'
  'RUBY_2.6.2;asdf/ruby/v2.6.2.sh;check_asdf ruby 2.6.2'
  'RUBY_2.6.3;asdf/ruby/v2.6.3.sh;check_asdf ruby 2.6.3'
  'RUBY_2.6.4;asdf/ruby/v2.6.4.sh;check_asdf ruby 2.6.4'

  # BASHS
  'GIT_BASHRC;bash/git.sh;check_bashrc functions/git.sh'
)