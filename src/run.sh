docker kill $(docker ps -q)
export NETWORK=superreddit
export NETALIAS_MONGO_DB=mongo_db
export NETALIAS_POST=post
export NETALIAS_COMMENT=comment

docker network create "${NETWORK}"
docker run -d --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network-alias=post catalogoanatom/post:1.0
docker run -d --network-alias=comment catalogoanatom/comment:1.0
docker run -d  -p 9292:9292 catalogoanatom/ui:1.0
