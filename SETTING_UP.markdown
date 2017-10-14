## Local Dependencies

  * [Docker][]
  * [Docker Compose][]

Docker Compose encapsulates all of the services we'd need to use to get things
up and running for the API. No need to have them on your host machine.

## Things To Use

  * :rocket: `docker-compose up` - Gets the whole setup running.
  * :hammer: `docker-compose run api rake dev:setup` - Does some initial setup for development.
  * :construction_worker: `docker-compose run api rake test` - Does some initial setup for development.
  * :question: `docker-compose run api rake -AT` - Lists all of the commands available.

[docker]: http://docker.com
[docker compose]: https://docs.docker.com/compose
