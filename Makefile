update_poetry_lock_file:
	poetry add $(pip freeze)

build_image:
	docker build -t fastapi-poetry-docker .

build_image_no_cache:
	docker build --no-cache -t fastapi-poetry-docker .

build_image_with_tag:
	docker build -t fastapi-poetry-docker:$(tag) .

build_image_with_tag_no_cache:
	docker build --no-cache -t fastapi-poetry-docker:$(tag) .

run_container:
	docker run --name fastapi-poetry-docker-container -p 8098:8098 fastapi-poetry-docker:$(tag)
