
first: init build up tailwind

init:
	cp compose.override.yml.sample compose.override.yml
	mkdir i-wanna-wiki-front/build

tailwind:
	docker compose exec web npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
	docker compose exec web npx tailwindcss init -p

build:
	docker compose build
up:
	docker compose up -d
down:
	docker compose down