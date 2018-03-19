all: build

build:
	@docker build --tag=eutechnic/postgresql .

release: build
	@docker build --tag=eutechnic/postgresql:$(shell cat VERSION) .
