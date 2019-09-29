cd

sudo apt-get install -y postgresql postgresql-client postgresql-contrib libpq-dev

sudo -u postgres createuser linqueta -s
sudo -u postgres createuser postgres -s
sudo -u postgres createuser root -s

. $SETTINGS_ECHO
step "TYPE THESE COMMANDS TO SET THE PASSWORDS:

  \password linqueta
  \password postgres
  \password root"

sudo -u postgres psql

cd