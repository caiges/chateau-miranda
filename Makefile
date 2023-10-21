deploy:
	scp -r src/* caiges@198.58.104.235:./www/blackcatgoesmeow.com

dev:
	docker run --rm --name blackcatgoesmeow -p 80:80 -v $(PWD)/src:/usr/share/nginx/html:ro -d nginx
