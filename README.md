# docker-rest.bitcoin.com
This repository contains a Dockerfile and bash shell scripts for building
a containerized version of [rest.bitcoin.com](https://github.com/Bitcoin-com/rest.bitcoin.com).

## Installation
These directions are geared at Ubuntu 18.04 OS with at least 2GB of RAM,
and a non-root user with sudo privledges. Before installing this software, you
need to have a [Wormhole node](https://github.com/christroutner/wormhole-docker)
and [Insight server](https://github.com/christroutner/insight-docker) to connect
it to. All three software must be targeted for either testnet or mainnet.


1. It's always a good idea to add
[swap space](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04)
to a new system. I recommend 8GB of swap typically.

2. Install Docker on the host system. Steps 1 and 2 in
[this tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04)
shows how to install Docker on a Ubuntu system.

3. Clone this repository:

`git clone https://github.com/christroutner/insight-docker && cd insight-docker`

* Create a BASH shell script for starting the server, based on the
[example script file](config/start-example). Fill in the Wormhole node IP address
and login info and the Insight server IP address. Edit the Dockerfile
to use this file. Note: If you rename the file to either `start-testnet` or
`start-mainnet` then it will not be saved to Git, thus not exposing the sensitive
credential information.





* Create a `blockchain-data` directory in your home directory:

`mkdir ~/blockchain-data`

* Build the Docker images by running the 'build' shell script:

`./build-image`

* After the Docker image has been build, you can start it with the 'run' shell script:

`./run-image`

* After the blockchain syncs, you can access the insight server at port 3001.
You can check on progress with the command `docker logs insight-bch`.

**Note**: It's important that the
[bitcoin.conf](config/testnet-example/bitcoin.conf)
file get copied to the `~/blockchain-data` directory. If it is not, bitcore
will generate it's own (incorrect) copy. If things are behaving unexpectedly,
inspect the `~/blockchain-data/bitcoin.conf` file first. The `./run-image` script
will copy the config file before starting the image.


## Ideas for future improvement:
* Expand the setup for mainnet
* Figure out a way to skip building bitcoin-abc from source.
