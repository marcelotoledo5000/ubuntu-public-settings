cd

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

mkdir -p ~/.kube

wget https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-07-26/bin/linux/amd64/aws-iam-authenticator

mkdir -p ~/bin

chmod +x ./aws-iam-authenticator && mv ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator

echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

source ~/.bashrc

cd