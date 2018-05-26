VERSION=`cat VERSION`

.PHONY: docker
docker: docker-build docker-publish

.PHONY: docker-build
docker-build:	## Builds container and tag resulting image
	docker build --force-rm --tag repejota/docker-alpine-python3 .
	docker tag repejota/docker-alpine-python3 repejota/docker-alpine-python3:$(VERSION)

.PHONY: docker-publish
docker-publish:	## Publishes container image
	docker push repejota/docker-alpine-python3:$(VERSION)
	docker push repejota/docker-alpine-python3:latest

include Makefile.help.mk
