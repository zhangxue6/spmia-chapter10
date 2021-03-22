echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure profile --profile-name eagle-eye-aws-dev --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY
ecs-cli configure --region us-east-2c --cluster spmia-tmx-dev
ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
