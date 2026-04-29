# Moovie

Ruby on Rails + PostgreSQL online movie platform.

## Stack

- Ruby 3.3.6
- Rails 7.2
- Cloud PostgreSQL
- Docker Compose for local app runtime

## Environment

Create `.env` from `.env.example` and point it at your cloud PostgreSQL database:

```sh
DATABASE_URL=postgres://username:password@host:5432/moovie_development
```

## Run with Docker

Start Docker Desktop, then run:

```sh
docker compose up --build
```

In another terminal, prepare the database:

```sh
docker compose run --rm web ruby bin/rails db:prepare db:seed
```

Open http://localhost:3000.

## Local Rails Commands

```sh
ruby bin/rails routes
ruby bin/rails db:migrate
ruby bin/rails test
```

## GitHub Actions

The build workflow lives in `.github/workflows/build.yml`.

Set this repository secret before running database-backed jobs:

```sh
DATABASE_URL=
```
