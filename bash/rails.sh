cd

echo "
if [ -f $SETTINGS_PUBLIC_PATH/functions/rails.sh ]; then
    . $SETTINGS_PUBLIC_PATH/functions/rails.sh
fi
" >> ~/.bashrc
source ~/.bashrc

cd