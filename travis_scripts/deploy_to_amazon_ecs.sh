echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure profile --profile-name eagle-eye-aws-dev-profile --access-key AKIA4JVP6YTE2LLEIMYX --secret-key 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
ecs-cli configure --region us-east-2c --cluster spmia-tmx-dev --default-launch-type FARGATE --config-name eagle-eye-aws-dev-config
ecs-cli compose --ecs-profile eagle-eye-aws-dev-profile --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
