default: build

build:
	@(pnpm install; pnpm build;)

lint:
	@(pnpm prettier --write . --loglevel warn; cd ..)

test:
	@(pnpm install; pnpm test;)

test-warnings:
	./check-warnings.sh
