#!/bin/bash

DIR='/raptoreum/.raptoreumcore/testnet3'
BOOTSTRAP_TAR='https://github.com/Chadwicksracing/TestNET_Raptoreum_SmartNode/releases/download/Test/Jan_2022_bootstrap.gz'

if [ ! -d $DIR ]; then
  mkdir -p $DIR
  curl -L $BOOTSTRAP_TAR | tar xz -C $DIR
else
  echo "Datadir has been detected so bootstrap will not be used..."
fi
