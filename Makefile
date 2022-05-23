IMAGE_NAME=standhope
DEPS=Dockerfile app/standhope.py app/requirements.txt

.PHONY: all
all: .image_build

.image_build: $(DEPS)
	docker build -t $(IMAGE_NAME) .
	touch .image_build
