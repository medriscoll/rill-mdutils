#!/usr/bin/env bash

## create a new Rill project
## and load it up with some data

mkdir $HOME/rill-untitled-project
cd $HOME/rill-untitled-project

## launch & open Rill
nohup rill start &
open http://localhost:8080/

## download a parquet file
cd $HOME/rill-untitled-project
wget https://storage.googleapis.com/medriscoll-rill/ecommerce-data/events_electronics_store.parquet
rill import-source events_electronics_store.parquet

## copy a working model into the models directory
wget https://raw.githubusercontent.com/medriscoll/rill-mdutils/main/models/events_electronics_store_model.sql
mv events_electronics_store_model.sql ./models/
