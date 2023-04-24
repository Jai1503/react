ls -al
docker build -t reactapp:v1 .
docker images
docker tag  reactapp:v1 jaya1503/dev:v1
echo $docker | docker login --username jaya1503 --password-stdin
docker push jaya1503/dev:v1
