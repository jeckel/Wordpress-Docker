# Wordpress-Docker

Running wordpress with Docker (for dev and testing only)

This repository is used to be able to deploy easily a new wordpress to make test or developing new features.

# Requirements

You need to have Docker and Docker Composer correctly installed before using this repository

# How it Work

First, run `make` in the root directory.

The port 80 of apache is mapped to the port 8080 of the host. You can then go to the Wordpress start page at http://localhost:8080/ if you are running docker on you local machine.

When configuring the Database, just fill the database hostname with `datastore` and keep other default values.

And that's all.

# Other Makefile commands

* `make` : this is the default command, it will chain `make install`, `make build` and `make up`
* `make install` : this will download the latest version of wordpress and install it ready for Docker
* `make build` : this will build the docker container according to the configuration files
* `make up` : this will run the previously created container
* `make stop` : this will stop the running instances of the containers
* `make rm` : this will remove current instances of the containers (usefull before making a new `make build`)
* `make clean` : this will remove current installation of wordpress
