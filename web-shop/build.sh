IMAGE_NAME="alexmarquardt/web-shop"
VERSION="2.10"
docker buildx build --platform linux/amd64 -t $IMAGE_NAME:$VERSION . --push
