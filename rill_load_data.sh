#!/usr/bin/env bash

## set up jewelry_purchase_history
cd $HOME/rill-untitled-project
wget https://storage.googleapis.com/medriscoll-rill/ecommerce-data/jewelry_purchase_history.parquet
rill import-source jewelry_purchase_history.parquet

## reimport this file again
rill import-source jewelry_purchase_history.parquet

## import another file
wget https://storage.googleapis.com/medriscoll-rill/ecommerce-data/jewelry_purchase_history_copy.parquet
rill import-source jewelry_purchase_history_copy.parquet
