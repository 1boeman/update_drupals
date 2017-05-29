#!/bin/bash

if [ $# -lt 2 ]
  then
    echo "Usage: update_drupals.sh <PATH_TO_DRUSH> <DRUPAL_DIRECTORY_1> [<DRUPAL_DIRECTORY_2> ...<etc>]"
    exit 1
fi
rundir=$PWD
drush=$1

for dir in ${@:2}
do
  cd "$dir"
  echo "$dir"
  $drush up -y
  cd "$rundir"
done

echo $rundir
