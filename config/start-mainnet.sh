#!/bin/bash

# Personal Mainnet full node
export RPC_BASEURL=http://192.168.0.36:8332/
export RPC_USERNAME=bitcoin
export RPC_PASSWORD=password
export ZEROMQ_PORT=28332
export ZEROMQ_URL=192.168.0.36
export NETWORK=mainnet

# Insight API Server
export BITCOINCOM_BASEURL=http://192.168.0.36:12100/api/

# SLPDB
#export SLPDB_URL=https://slpdb.bchdata.cash/
export SLPDB_URL=http://192.168.0.36:12300/

npm start
