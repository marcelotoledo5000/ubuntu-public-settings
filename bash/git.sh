cd

echo "
if [ -f $SETTINGS_ROOT/functions/git.sh ]; then
    . $SETTINGS_ROOT/functions/git.sh
fi
" >> ~/.bashrc
source ~/.bashrc

cd