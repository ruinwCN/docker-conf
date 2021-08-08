```
server {
    listen 80;
    server_name xxx.xxx.com;
    rewrite ^(.*) https://$server_name$1 permanent;
}

server {
    listen 443 ssl;
    server_name xxx.xxx.com;
    root /usr/share/nginx/html;

    ssl_certificate        /etc/nginx/conf.d/xxx.xxx.com.pem;
    ssl_certificate_key    /etc/nginx/conf.d/xxx.xxx.com.key;

    location /api/ {
        proxy_pass  http://127.0.0.1:8081/;
    }
    location /baidu/ {
        resolver    8.8.8.8;
        proxy_pass   https://www.baidu.com/;
    }
```

