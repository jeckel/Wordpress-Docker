# Default is made to quick launch the project.
BIN="./wordpress"

default: build up

install:
	@-./scripts/install-wordpress.sh

build:
	docker-compose build

up:
	docker-compose up -d

# Stop all containers not forced
stop:
	docker-compose stop

# Clean all the container stoped not forced
rm:
	docker-compose rm

clean:
	@-./scripts/clean-wordpress.sh
