cd

echo "
if [ -f $SETTINGS_PUBLIC_PATH/functions/git.sh ]; then
    . $SETTINGS_PUBLIC_PATH/functions/git.sh
fi
" >> ~/.bashrc
source ~/.bashrc

cd