cd

rm -rf ~/.asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc

cd