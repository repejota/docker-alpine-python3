.PHONY: docker
docker: docker-build docker-publish

.PHONY: docker-build
docker-build:	## Builds container and tag resulting image
	docker build --force-rm --tag repejota/alpine-python3 .
	docker tag repejota/alpine-python3 repejota/alpine-python3:$(VERSION)

.PHONY: docker-publish
docker-publish:	## Publishes container image
	docker push repejota/alpine-python3:$(VERSION)
	docker push repejota/alpine-python3:latest

.PHONY: help
help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'