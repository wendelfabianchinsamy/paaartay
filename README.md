# README

A simple Ruby on Rails API and LocalStack POC.

### System Dependencies
Docker

### Setup Environment Variables
You will need to setup some environment variables before building the project.

1. In the project working directory, create a directory named env
2. Create a file called postgres.env inside of the env directory
3. Add two entries into postgres.env and provide relevant values:
    - POSTGRES_PASSWORD=
    - POSTGRES_USER=
2. Create a file called api.env inside of the env directory
3. Add two entries into api.env and provide relevant values for DB_PASSWORD and DB_USER:
    - DB_PASSWORD=
    - DB_USER=
    - DB_HOST=db
    - API_ENVIRONMENT=development


### How do I run this?
1. `docker compose build`
2. `docker compose run api bash`
3. `bundle exec rails db:create`
4. `docker compose up`
5. The api is available on http://localhost:3000
