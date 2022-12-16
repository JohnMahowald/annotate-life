install:
	bundle _2.0.0.pre.3_ install

bundle:
	$(MAKE) install $$1

update:
	bundle _2.0.0.pre.3_ update json


build:
	docker build -t annotate-life .

run:
	docker run -t annotate-life annotate-life

start:
	bin/rails server

console:
	bin/rails console

build-postgres:
	source ./env/docker.sh && build_postgres

.PHONY: postgres
postgres:
	source ./env/docker.sh && run_postgres

build-db:
	bin/rake db:create db:migrate
