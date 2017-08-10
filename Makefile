build:
	docker build -t lavr/node-build:8 -f 8/Dockerfile .
	docker build -t lavr/node-build:8-slim -f 8/slim/Dockerfile .
	docker build -t lavr/node-build:8-wheezy -f 8/wheezy/Dockerfile .

	docker build -t lavr/node-build:7 -f 7/Dockerfile .
	docker build -t lavr/node-build:7-slim -f 7/slim/Dockerfile .
	docker build -t lavr/node-build:7-wheezy -f 7/wheezy/Dockerfile .

	docker build -t lavr/node-build:slim -f slim/Dockerfile .
	docker build -t lavr/node-build:latest -f latest/Dockerfile .

push:
	docker login

	docker push lavr/node-build:8
	docker push lavr/node-build:8-slim
	docker push lavr/node-build:8-wheezy

	docker push lavr/node-build:7
	docker push lavr/node-build:7-slim
	docker push lavr/node-build:7-wheezy

	docker push lavr/node-build:slim
	docker push lavr/node-build:latest