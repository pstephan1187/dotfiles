SCRIPT_PATH=$(greadlink -f $BASH_SOURCE)
DOTFILES_DIR=$( cd $( dirname $SCRIPT_PATH ) && pwd )

for DOTFILE in `find $DOTFILES_DIR/dotfiles`
do
  [ -f $DOTFILE ] && source $DOTFILE
done
