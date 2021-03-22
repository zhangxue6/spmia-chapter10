echo "Pushing service docker images to docker hub ...."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push zhangxue6/tmx-authentication-service:$BUILD_NAME
docker push zhangxue6/tmx-licensing-service:$BUILD_NAME
docker push zhangxue6/tmx-organization-service:$BUILD_NAME
docker push zhangxue6/tmx-confsvr:$BUILD_NAME
docker push zhangxue6/tmx-eurekasvr:$BUILD_NAME
docker push zhangxue6/tmx-zuulsvr:$BUILD_NAME
