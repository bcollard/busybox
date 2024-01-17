all: container

TAG = 1.1
PREFIX = pileenretard/busybox

container:
	docker build -t $(PREFIX):$(TAG) .

push: container
	docker push $(PREFIX):$(TAG)

clean:
	docker rmi $(PREFIX):$(TAG)

run:
	docker run -d --name busybox $(PREFIX):$(TAG)

stop:
	docker stop busybox && docker rm busybox
