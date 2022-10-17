#!/usr/bin/env bash

## clean up rill
rm -fr /usr/local/bin/rill
pkill -f rill
rm -fr $HOME/.rill
rm -fr $HOME/rill-untitled-project

## install new rill version
curl -s https://cdn.rilldata.com/install.sh | bash
rill --version
mkdir $HOME/rill-untitled-project
cd $HOME/rill-untitled-project

## launch Rill
rill start &
open http://localhost:8080/

