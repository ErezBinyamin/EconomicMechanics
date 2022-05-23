#!/bin/bash

CarSoup() {
	local IMAGE_NAME=standhope

	if make --question
	then
		docker run -it ${IMAGE_NAME} python standhope.py $@
	else
		make && docker run -it ${IMAGE_NAME} python standhope.py $@
	fi
}

CarSoup $@
