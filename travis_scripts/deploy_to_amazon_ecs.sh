echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure profile --profile-name eagle-eye-aws-dev-profile --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY
ecs-cli configure --region us-east-2 --cluster spmia-tmx-dev --config-name eagle-eye-aws-dev-config
ecs-cli compose --ecs-profile eagle-eye-aws-dev-profile --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
