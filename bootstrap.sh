#!/bin/bash

DIR='/raptoreum/.raptoreumcore/testnet4'
BOOTSTRAP_TAR='https://github.com/Chadwicksracing/Raptoreum_SmartNode_Scripts/releases/download/1.3.17.99/April_2022_bootstrap.tar.gz'

if [ ! -d $DIR ]; then
  mkdir -p $DIR
  curl -L $BOOTSTRAP_TAR | tar xz -C $DIR
else
  echo "Datadir has been detected so bootstrap will not be used..."
fi
