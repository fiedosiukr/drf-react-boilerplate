format:
	docker-compose exec backend bash -c "isort . && black ."

makemigrations:
	docker-compose exec backend bash -c "python manage.py makemigrations"
	
migrate:
	docker-compose exec backend bash -c "python manage.py migrate"