up:
	docker-compose up -d && cd ./serverapi && npm start

down:
	docker-compose down --remove-orphans

ps:
	docker-compose ps