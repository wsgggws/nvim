# Docker

## Install
- `brew install docker`
- `docker ps` # check it

## Configure
- http://hub-mirror.c.163.com  # add the link by click docker image Perferences->Daemon->Registry mirrors
## Usage
#### images

```
docker images # images list
docker pull ubuntu:13.10  # get a new images
docker run ubuntu:13.10 # run the images, then create a container.
docker search httpd # search a new images for http://hub0mirror.c.163.com

docker build -t hjtian/scrapyrtship:v0.3.0 . # create a images named scrapyrtship and tag is v0.3.0, using ./ Dockerfile.

docker tag IMAGES_ID hjtian/scrapyrtship:v0.4.0 # create a new tag for images hjtian/scrapyrtship.

docker rmi [-f] IMAGES_ID
```

#### Container

```
docker ps  # container list
docker run -d -p 9080:9080 hjtian/scrapyrtship:v0.3.0  #run images and create a container -d backend, -p port 

docker rm CONTAINER_ID
```

# Others
- docker logs -f CONTAINER_ID
- docker top  determined_swanson
- docker inspect determined_swanson
