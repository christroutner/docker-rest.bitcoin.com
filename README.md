# docker-rest.bitcoin.com
This repository contains a Dockerfile Compose file for building
a containerized version of [rest.bitcoin.com](https://github.com/Bitcoin-com/rest.bitcoin.com).

## Installation
These directions are geared at Ubuntu 18.04 OS with at least 2GB of RAM,
and a non-root user with sudo privledges. Before installing this software, you
need to have a [Bitcoin Cash Full Node](https://github.com/christroutner/docker-abc)
and an [Insight v3 API server](https://github.com/christroutner/insight-docker)
to connect it to. All three software must be targeted for either testnet or
mainnet.

- Install Docker and Docker Compose on the system. It's also a good idea to add
2 to 8 GB of swap space.
[Here is a list of commands](https://troutsblog.com/research/dev-ops/overview)
to achieve this.

- Clone this repository:

`git clone https://github.com/christroutner/docker-rest.bitcoin.com && cd docker-rest.bitcoin.com`

- Create a BASH shell script for starting the server, based on the
[example script file](config/start-example). Fill in the full node IP address
and login info and the Insight server IP address.

- Edit the Dockerfile
to use this file. Note: If you rename the file to either `start-testnet` or
`start-mainnet` then it will not be saved to Git, thus not exposing the sensitive
credential information.

- Customize the [Dockerfile](Dockerfile) to point to either testnet or mainnet.

- Build the Docker image by running:

`docker-compose build --no-cache`

- After the Docker image has been built, you can start it:

`docker-compose up -d`

- You can now access the REST server at port `12500`.

## Docker Debugging
The following commands are useful for debugging applications like this one
inside a Docker container. The commands below help you to enter a shell
inside the container.

* `docker ps -a`
  * Show all docker processes, including ones that are stopped.

* `docker container run --name test-container --rm -it <Image ID> bash`
  * This command will run a docker container and drop you into a bash shell.
  All you need is the image ID.

* `docker exec -it <container ID> bash`
  * This command will let you enter a bash shell inside a running Docker container.

## License
[MIT](LICENSE.md)
