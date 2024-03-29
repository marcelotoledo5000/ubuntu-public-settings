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
  'SPOTIFY;programs/spotify.sh;check_command spotify'
  'TUSK;programs/tusk.sh;check_command tusk'
  'HYPER;programs/hyper.sh;check_command hyper'
  'DOCKER;programs/docker.sh;check_command docker'
  'DOCKER_COMPOSE;programs/docker-compose.sh;check_command docker-compose'
  'EB;programs/eb.sh;check_bashrc .ebcli-virtual-env/executables'
  'KUBECTL;programs/kubectl.sh;check_command kubectl'
  'GCLOUD;programs/gcloud.sh;check_command gcloud'

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
  'RUBY_2.3.1;asdf/ruby/v2.3.1.sh;check_asdf ruby 2.3.1'
  'RUBY_2.5.1;asdf/ruby/v2.5.1.sh;check_asdf ruby 2.5.1'
  'RUBY_2.6.2;asdf/ruby/v2.6.2.sh;check_asdf ruby 2.6.2'
  'RUBY_2.6.3;asdf/ruby/v2.6.3.sh;check_asdf ruby 2.6.3'
  'RUBY_2.6.4;asdf/ruby/v2.6.4.sh;check_asdf ruby 2.6.4'

  # BASHS
  'HOSTS;bash/hosts.sh;check_hosts local.linqueta'
  'GIT_BASHS;bash/git.sh;check_bashrc functions/git.sh'
  'RAILS_BASHS;bash/rails.sh;check_bashrc functions/rails.sh'

  # STUFF
  'CARGO;stuff/cargo.sh;check_command cargo'
  'CLICK;stuff/click.sh;check_bashrc "click=~/.click/"'
  'TWEAK;stuff/tweak.sh;check_apt_policy gnome-tweak-tool'
  'PAPER;stuff/paper.sh;check_apt_policy paper-icon-theme'

  # CONFIGS
  "AWS_CREDENTIAL;$SETTINGS_PRIVATE_PATH/configs/aws_credentials.sh;check_file  ~/.aws/credentials"
  "EB_PROFILE;$SETTINGS_PRIVATE_PATH/configs/eb_profile.sh;check_file ~/.aws/config"
  "KUBECTL_CONFIG;$SETTINGS_PRIVATE_PATH/configs/kubectl_config.sh;check_file ~/.kube/config"
  "GCLOUD_CONFIG;$SETTINGS_PRIVATE_PATH/configs/gcloud_config.sh;check_file ~/.gcloud_config"

  # PROJECTS
  "SECRET;$SETTINGS_PRIVATE_PATH/projects/secret.sh;check_file $PET_PATH/secret/.gitignore"
  "KANGAROO;$SETTINGS_PRIVATE_PATH/projects/kangaroo.sh;check_file $PET_PATH/kangaroo/.gitignore"
  "EB_RACCOON;$SETTINGS_PRIVATE_PATH/projects/eb_raccoon.sh;check_file $EB_PATH/raccoon/.gitignore"
  "GREYHOUND;$SETTINGS_PRIVATE_PATH/projects/greyhound.sh;check_file $PET_PATH/greyhound/.gitignore"
)