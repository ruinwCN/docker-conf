docker run --name nginx -d -p 80:80 -p 443:443 -v /dist/:/usr/share/nginx/html/dist -v /mnt/nginx/conf.d:/etc/nginx/conf.d nginx