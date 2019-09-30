cd

wget https://releases.hyper.is/download/deb
sudo apt --fix-broken install
sudo dpkg -i deb
rm -rf deb

echo '
module.exports = {
  config: { /*... */ },
  keymaps: {
    "pane:splitHorizontal": "ctrl+shift+f",
  },
  plugins:[]
};
' > .hyper.js

. $SETTINGS_ECHO
step "ENABLE: HYPER > MENU > PLUGINS > INSTALL HYPER CLI..."

source ~/.bashrc

hyper i hyper-monokai-deluxe
hyper i hyper-single-instance

cd