#! /bin/bash

for file in *.{html,htm,jpg,php,css,gif}
do
    if [ -f $file ]; then
    echo $file
    fi
done

exit 0
