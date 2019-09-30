cd

sudo apt-get update
sudo apt-get install -y build-essential zlib1g-dev libssl-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev
git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git
./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer
echo 'export PATH="/home/linqueta/.ebcli-virtual-env/executables:$PATH"' >> ~/.bashrc && source ~/.bashrc

cd