docker kill $(docker ps -q)
export DUSERNAME=catalogoanatom
docker-compose up -d
docker-compose ps
