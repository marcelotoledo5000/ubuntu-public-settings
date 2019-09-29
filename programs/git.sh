cd

sudo apt-get install git
git config --global color.ui true
git config --global user.name "linqueta"
git config --global user.email "lincolnrodrs@gmail.com"
ssh-keygen -t rsa -b 4096 -C "lincolnrodrs@gmail.com"
cat ~/.ssh/id_rsa.pub
echo "https://github.com/settings/ssh/new"
read -p "Waiting you set your certicate - Press Enter to continue"
ssh -T git@github.com

cd