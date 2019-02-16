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
