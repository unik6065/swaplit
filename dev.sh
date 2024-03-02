docker build -f dev.Dockerfile -t swaplit-dev . &&
docker run -d --rm -v $(pwd):/rails -p 3000:3000 swaplit-dev
