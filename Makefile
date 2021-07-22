.PHONY: build

build:
	docker-compose build $(SERVICES)

.PHONY: status logs start stop clean

ps:
	docker-compose ps $(SERVICES)

logs:
	docker-compose logs -f $(SERVICES)

up:
	docker-compose up -d $(SERVICES)

start:
	docker-compose start $(SERVICES)

stop:
	docker-compose stop $(SERVICES)

down:stop
	docker-compose down -v --remove-orphans

attach:
	docker-compose exec $(SERVICE) bash

prune:
	docker system prune
