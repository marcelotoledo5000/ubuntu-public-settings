asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install nodejs 10.16.0

asdf global nodejs 10.16.0

asdf reshim
