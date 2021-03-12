FORCE: ;

build: FORCE
	docker-compose build

deploy: build
	docker-compose up --detach stream-converter

test: build
	docker-compose run --rm test

restart: deploy
	docker-compose restart
