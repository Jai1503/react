docker build -t reactapp:v1 .
docker images
docker tag reactapp:v1 jaya1503/prod:v1
echo $docker | docker login --username jaya1503 --password-stdin
docker push jaya1503/prod:v1

scp -o StrictHostKeyChecking=no -i $Key docker-compose.yml ubuntu@35.77.223.33:/home/ubuntu/
ssh -o StrictHostKeyChecking=no -i $Key ubuntu@35.77.223.33 << EOF

echo $docker | docker login --username jaya1503 --password-stdin
docker-compose up -d
