#!/bin/sh

read -p "Cleaning currently installed version of wordpress, press any key to continue..." yn
if [ -d wordpress ]
then
  rm -Rf wordpress
  echo "Wordpress removed."
else
  echo "Nothing to remove."
fi
