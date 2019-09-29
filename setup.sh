export SETTINGS_ROOT=$HOME/workspace/linqueta/ubuntu-public-settings
export SETTINGS_ECHO=$SETTINGS_ROOT/functions/echo.sh

. $SETTINGS_ECHO
. $SETTINGS_ROOT/functions/checks.sh
. $SETTINGS_ROOT/functions/list.sh
. $SETTINGS_ROOT/functions/setup.sh

setup
