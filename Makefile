#

ifneq (,$(wildcard ./.env))
    include .env
    export
endif



APP :=$(PROJECT_NAME)
NGINX := $(APP)-nginx
FPM := $(APP)-php-fpm
CLI := $(APP)-php-cli
MYSQL := $(APP)-mysql

env:
	env

init:
	cp ./.env.test .env
	docker-compose up --build -d

ver:
	docker -v
	docker-compose -v

list:
	cat Makefile


# Чтобы войти в любой из контейнеров, делаем следующее:
app-nginx:
	#docker exec -it $(NGINX) bash
	echo "docker exec -it $(NGINX) bash"

app-php:
	docker exec -it $(FPM) bash

app-cli:
	docker exec -it $(CLI) bash


app-mysql:
	docker exec -it $(MYSQL) bash

# Просмотр запущенных контейенров:
running:
	docker ps

# Logs

log-php:
	docker logs $(NGINX)

log-cli:
	docker logs $(CLI)

log-fpm:
	docker logs $(FPM)

log-mysql:
	docker logs $(MSQL)


# Volume inspect
inspect:
	docker volume inspect mysql




















# hello_worl
hello-world:
	docker run hello-world
