
.ONESHELL:
run_local:
	docker build --build-arg url=http://localhost:8000 -t veems-load-testing .
	docker run -p 8089:8089 veems-load-testing

.ONESHELL:
run_dev:
	docker build --build-arg url=https://veems.dev -t veems-load-testing .
	docker run -p 8089:8089 veems-load-testing

.ONESHELL:
run_prod:
	docker build --build-arg url=https://veems.com -t veems-load-testing .
	docker run -p 8089:8089 veems-load-testing
