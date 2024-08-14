update_poetry_lock_file:
	poetry add $(pip freeze)

build_image:
	docker build -t python-poetry-docker .

build_image_no_cache:
	docker build --no-cache -t python-poetry-docker .

build_image_with_tag:
	docker build -t python-poetry-docker:$(tag) .

build_image_with_tag_no_cache:
	docker build --no-cache -t python-poetry-docker:$(tag) .


