docker kill $(docker ps -q)
export NETWORK=reddit

#docker network create "${NETWORK}"
docker run -d --network=${NETWORK} --network-alias=post_db --network-alias=comment_db  mongo:latest
docker run -d --network=${NETWORK} --network-alias=post catalogoanatom/post:1.0
docker run -d --network=${NETWORK} --network-alias=comment catalogoanatom/comment:1.0
docker run -d --network=${NETWORK}  -p 9292:9292 catalogoanatom/ui:2.0
