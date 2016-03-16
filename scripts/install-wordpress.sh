#!/bin/sh

if [ -d wordpress ]
then
  echo "Wordpress already installed"
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
