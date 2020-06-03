IMAGENAME = navenio-docker.jfrog.io/geoserver/postgres_backup:$(TAG)

build:
	docker build -t $(IMAGENAME) .

push:
	docker push $(IMAGENAME)