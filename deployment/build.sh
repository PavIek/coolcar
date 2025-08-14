DOMAIN=$1
cd ../server
# docker buildx build --platform linux/amd64,linux/arm64 -t coolcar/$DOMAIN --no-cache --network host -f ../deployment/$DOMAIN/Dockerfile .

docker buildx build --platform linux/arm64 -t coolcar/$DOMAIN --no-cache --network host -f ../deployment/$DOMAIN/Dockerfile .