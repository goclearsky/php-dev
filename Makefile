all: 7 8

7: 7.1 7.2 7.3 7.4

8: 8.0 8.1 8.2

7.1 7.2 7.3 7.4: Dockerfile-7
	docker build --build-arg="BASE_IMAGE_TAG=$@" -t goclearsky/php-apache-dev:$@ -f Dockerfile-7 .
ifeq ($(push), true)
	docker push goclearsky/php-apache-dev:$@
endif

8.0 8.1 8.2: Dockerfile-8
	docker build --build-arg="BASE_IMAGE_TAG=$@" -t goclearsky/php-apache-dev:$@ -f Dockerfile-8 .
ifeq ($(push), true)
	docker push goclearsky/php-apache-dev:$@
endif
