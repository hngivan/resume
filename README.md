# resume

build by [JSON Resume](https://jsonresume.org/) technology with [kendall theme](https://github.com/LinuxBozo/jsonresume-theme-kendall).

Make on the server:

Make on the server:

```bash
docker compose run build
docker compose run build-pdf
```

How to update: 
```bash
git pull repository 
docker buildx build -t hngivan/jsonresume:latest --push .
docker build .
docker-compose up
```
