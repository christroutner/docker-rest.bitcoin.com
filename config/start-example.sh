#!/bin/bash

# My DO Testnet Insight Server
export RPC_BASEURL=http://<full node IP>:<port>/
export RPC_PASSWORD=<rpc password>
export RPC_USERNAME=<rpc login>
export ZEROMQ_URL=<full node IP>
export ZEROMQ_PORT=<full node ZMQ port>
export NETWORK=testnet #or mainnet

# My DO Testnet Insight Server
export BITCOINCOM_BASEURL=http://<insight server IP>:<insight port>/api/

npm start
