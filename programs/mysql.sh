cd

sudo apt-get install -y mysql-server libmysqlclient-dev

. $SETTINGS_ECHO
step "TYPE THESE COMMANDS TO CREATE ALL USERS:

  CREATE USER 'linqueta'@'localhost' IDENTIFIED BY 'linqueta';
  CREATE USER 'mysql'@'localhost' IDENTIFIED BY 'mysql';
  CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
  GRANT ALL PRIVILEGES ON *.* TO 'linqueta'@'localhost';
  GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'localhost';
  GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';
  FLUSH PRIVILEGES;"

sudo mysql -u root -p

cd