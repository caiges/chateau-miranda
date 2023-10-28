project_name=$(shell basename $(PWD))

deploy:
	scp -r src/* caiges@198.58.104.235:./www/chateau-miranda.com

dev:
	docker run --rm --name $(project_name) -p 80:80 -v $(PWD)/src:/usr/share/nginx/html:ro -d nginx
