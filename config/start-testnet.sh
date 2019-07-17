#!/bin/bash

# Personal Mainnet full node
#export RPC_BASEURL=http://192.168.0.38:18332/
export RPC_BASEURL=http://172.17.0.1:18332/
export RPC_USERNAME=bitcoin
export RPC_PASSWORD=password
export ZEROMQ_PORT=28332
#export ZEROMQ_URL=192.168.0.38
export ZEROMQ_URL=172.17.0.1
export NETWORK=testnet

# Insight API Server
#export BITCOINCOM_BASEURL=http://192.168.0.36:13100/api/
export BITCOINCOM_BASEURL=http://172.17.0.1:13100/api/

# SLPDB
#export SLPDB_URL=https://slpdb.bchdata.cash/
#export SLPDB_URL=http://192.168.0.36:13300/
export SLPDB_URL=http://172.17.0.1:13300/

npm start
