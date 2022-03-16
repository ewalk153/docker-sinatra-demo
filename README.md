# Docker Sinatra Demo

Quick demo to setup and run a sintra app through docker-compose.

```bash
docker-compose up -d
curl http://localhost:3000/frank-says
> Put this in your pipe & smoke it!
docker-compose down # this stops the service
```

After making changes to the docker setup, you can rebuild the image with:

```bash
docker-compose build
```

