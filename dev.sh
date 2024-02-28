docker build -f dev.Dockerfile -t swaplit-dev . &&
docker run -it --rm -v $(pwd):/app -p 3000:3000 swaplit-dev
