#!/bin/bash

echo $#
if [ $# -lt 1 ]
  then
    echo "Usage: update_drupals.sh <DRUPAL_DIRECTORY_1> [<DRUPAL_DIRECTORY_2> ...]"
    exit 1
fi

rundir=$PWD

for dir in "$@"
do
  cd "$dir"
  drush up -y
  cd "$rundir"
done

echo $rundir
