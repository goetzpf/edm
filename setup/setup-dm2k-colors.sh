#/bin/bash
SCRIPT_FULL_NAME=$(readlink -e $0)
MYDIR=$(dirname $SCRIPT_FULL_NAME)
#MYNAME=$(basename $SCRIPT_FULL_NAME)

cd "$MYDIR" || exit 1

cp -a colors-DM2K.list colors.list
echo "Colors for DM2K compatibility were set up" >&2
