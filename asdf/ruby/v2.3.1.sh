cd

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

sudo sh -c "echo '\n# REMOVE THIS LINE BELOW:\ndeb http://security.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list"
sudo apt-get update
sudo apt-get install -y libssl1.0-dev

asdf install ruby 2.3.1

asdf reshim

. $SETTINGS_ECHO
step "REMOVE THE REPOSITORY BELOW OF THIS TEXT '# REMOVE THIS LINE BELOW:'"

sudo sh -c "nano /etc/apt/sources.list"

cd