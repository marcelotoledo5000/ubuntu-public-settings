export REPO_PATH=$HOME/workspace/linqueta/
export PET_PATH=$HOME/workspace/petlove/
export EB_PATH=$PET_PATH/eb/production
export SETTINGS_PUBLIC_PATH=$REPO_PATH/ubuntu-public-settings
export SETTINGS_PRIVATE_PATH=$REPO_PATH/ubuntu-private-settings
export SETTINGS_ECHO=$SETTINGS_PUBLIC_PATH/functions/echo.sh

. $SETTINGS_ECHO
. $SETTINGS_PUBLIC_PATH/functions/checks.sh
. $SETTINGS_PUBLIC_PATH/functions/list.sh
. $SETTINGS_PUBLIC_PATH/functions/setup.sh

run
