build:
	docker-compose build
up:
	docker-compose up -d
down:
	docker-compose down
restart:
	docker-compose stop
	docker-compose start
clean:
	@docker image prune
	@docker volume prune
ps:
	@docker ps -a

# Shellに入るやつ
phxsh:
	docker-compose exec web bash

# logの確認
phxlog:
	docker-compose logs web
phxlogf:
	docker-compose logs -f web

# attach
phxat:
	@docker attach jinro_rails

# phx用コマンド
compile:
	docker-compose run web bash -c "mix deps.compile"

create:
	docker-compose run web bash -c "mix ecto.create"

migrate:
	docker-compose run web bash -c "mix ecto.migrate"

get:
	docker-compose run web bash -c "mix deps.get"

ccmd:
	docker-compose run web bash -c "mix deps.get && mix deps.compile && mix ecto.create && mix ecto.migrate"

# 以下は使っていないもの
server:
	docker-compose run web bash -c "mix phx.server"
iserver:
	docker-compose run web bash -c "iex -S mix phx.server"
