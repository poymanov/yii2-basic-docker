init: docker-down docker-pull docker-build docker-up app-init
up: docker-up
down: docker-down
restart: down up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

docker-logs:
	docker-compose logs -f

app-init: app-composer-install copy-configs init-configs

app-composer-install:
	docker-compose run --rm php-cli composer install

copy-configs:
	cp docker/php/app/db-local.php src/config/db/db-local.php
	cp docker/php/app/params-local.php src/config/params/params-local.php

init-configs:
	docker-compose run --rm php-cli php init

app-run:
	docker-compose run --rm php-cli bash