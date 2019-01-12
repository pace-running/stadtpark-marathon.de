init:
	terraform init
	cd s3
	terraform init
	terraform apply

test:
	tflint

plan:
	terraform plan -out out.plan

apply:
	terraform apply out.plan

deploy:
	ecs deploy mesh-ecs-cluster pace-ecs-service-app
	ecs deploy mesh-ecs-cluster pace-ecs-service-pdf
