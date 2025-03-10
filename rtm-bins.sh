#!/bin/bash

COIN_NAME='raptoreum'
COIN_DAEMON='raptoreumd'
COIN_CLI='raptoreum-cli'
COIN_TX='raptoreum-tx'
COIN_PATH='/usr/local/bin'
WALLET_TAR=$(curl -s https://github.com/Raptor3um/raptoreum/releases/tag/1.4.17.99 | jq -r '.assets[] | select(.name|test("ubuntu22.")) | .browser_download_url')

# fetch latest release using github api
if pgrep $COIN_DAEMON; then
  $COIN_CLI stop
  mkdir temp
  curl -L $WALLET_TAR | tar xz -C ./temp; mv ./temp/$COIN_DAEMON ./temp/$COIN_CLI ./temp/$COIN_TX $COIN_PATH
  $COIN_DAEMON
else
  mkdir temp
  curl -L $WALLET_TAR | tar xz -C ./temp; mv ./temp/$COIN_DAEMON ./temp/$COIN_CLI ./temp/$COIN_TX $COIN_PATH
  rm -rf temp
fi
 