DOMAIN=$1
VERSION=$2
docker tag coolcar/$DOMAIN pavlek242/$DOMAIN:$VERSION
docker push pavlek242/$DOMAIN:$VERSION

# docker tag coolcar/$DOMAIN ccr.ccs.tencentyun.com/coolcar_powell/$DOMAIN:$VERSION
# docker push ccr.ccs.tencentyun.com/coolcar_powell/$DOMAIN:$VERSION