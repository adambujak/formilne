#! /bin/bash
SCRIPT=`realpath -s $0`
SCRIPTPATH=`dirname $SCRIPT`

TEMP_FIND_FILE=formilne_files_list.temp
find . \( -name '*.c' -o -name '*.h' \) -type f > $TEMP_FIND_FILE
uncrustify -c $SCRIPTPATH/style.cfg  -F $TEMP_FIND_FILE --replace --no-backup
rm $TEMP_FIND_FILE
