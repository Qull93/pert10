FROM alpine:latest
RUN apk add --update nginx 
RUN	rm -rf /var/cache/apk/*
RUN	mkdir -p /tmp/nginx/
		
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/default.conf /etc/nginx/conf.d/default.conf
ADD files/index.html /usr/share/nginx/html/

EXPOSE 80/tcp

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]