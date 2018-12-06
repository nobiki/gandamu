.DEFAULT_GOAL := help
.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

tty: ## docker exec -it -u vagrant -w /home/vagrant gandamu bash -l
	docker exec -it -u vagrant -w /home/vagrant gandamu bash -l

container: ## docker-compose -f docker-network.yml -f docker-compose.yml [up -d]
	docker-compose -f docker-network.yml -f docker-compose.yml up -d

container-destroy: ## docker-compose -f docker-network.yml -f docker-compose.yml [stop -> rm -f]
	docker-compose -f docker-network.yml -f docker-compose.yml stop
	docker-compose -f docker-network.yml -f docker-compose.yml rm -f

container-rerun: ## make [container-destroy -> container]
	make container-destroy
	make container

gandamu-lock: ## docker commit gandamu gandamu:lock and docker-compose.yml image name replace
	docker commit gandamu gandamu:lock
	sed -i -e "s/nobiki\/gandamu:latest/gandamu:lock/g" docker-compose.yml

