#!/bin/sh

if [ -d wordpress ]
then
  echo "Wordpress is already installed !"
  echo "- if you want to reinstall it, start by running 'make clean' to purge existing version."
  exit 0
else
  echo "Wordpress not installed, downloading..."
fi

if [ -d tmp ]
then
  rm -Rf tmp
fi
mkdir tmp
wget https://wordpress.org/latest.tar.gz -O ./tmp/latest.tar.gz
tar -xzf ./tmp/latest.tar.gz
rm -Rf tmp
chmod -R ugo+w wordpress
