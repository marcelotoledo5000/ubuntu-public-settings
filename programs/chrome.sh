cd

PKG_OK=$(cat /etc/apt/sources.list.d/google-chrome.list | grep "arch=amd64")
if [ "$PKG_OK" == "" ]; then
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb

  echo 'Set Chrome settings'
  echo 'Login and Language and Spelling'
  read
fi

cd