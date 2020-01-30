docker-build:
	$(eval BUILD_COMMIT:=$(shell git rev-parse --short HEAD))
	docker build -t infuseai/oidc-authservice:$(BUILD_COMMIT) .


docker-push:
	$(eval BUILD_COMMIT:=$(shell git rev-parse --short HEAD))
	docker push infuseai/oidc-authservice:$(BUILD_COMMIT)

publish: docker-build docker-push
