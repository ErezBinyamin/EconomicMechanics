#!/bin/bash

econmech() {
	local IMAGE_NAME=econmech

	if make --question
	then
		docker run -it ${IMAGE_NAME} python ${IMAGE_NAME}.py $@
	else
		make && docker run -it ${IMAGE_NAME} python ${IMAGE_NAME}.py $@
	fi
}

econmech $@
