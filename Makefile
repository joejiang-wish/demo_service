
local-service:
	LOAD_FROM_OTTER=ture CONSUL_HOST=http://127.0.0.1:8500 FLASK_ENV=dev NEED_REGISTER=1 python otter_v2_service/server.py

container-up:
	dev otter-v2-service up

container-service:
	dev otter-v2-service sh FLASK_ENV=dev NEED_REGISTER=True python otter_v2_service/server.py

build:
	docker build
	harbor.infra.wish-cn.com/wish/otter-v2-service/api-base:latest

build-base-img:
	docker build -t harbor.infra.wish-cn.com/wish/wish_flask/eks-base:latest \
		-f ci/eks/api/Dockerfile.base .

TAG ?= $(shell git rev-parse HEAD)
REF ?= $(shell git branch | grep \* | cut -d ' ' -f2)

deploy:
	REPO_NAME=otter_v2_service \
	BRANCH=$(REF) \
	SHA=$(TAG) \
	LOAD_FROM_OTTER=true \
	FLASK_ENV=$(FLASK_ENV) \
	CONSUL_HOST=http://127.0.0.1:8500 \
	OTTER_SERVER_HOST=http://127.0.0.1:8888 \
	/Users/joejiang/repos/wish/POC/deploy-mock/cmd.sh

deploy-dev:
	FLASK_ENV=dev make deploy

deploy-prod:
	FLASK_ENV=prod make deploy
