NAME=shimaore/nodejs

image:
	docker build -t ${NAME} .

image-no-cache:
	docker build --no-cache -t ${NAME} .

tests:
	cd test && for test in ./*.sh; do "$$test"; done

push: image tests
	docker push ${NAME}
