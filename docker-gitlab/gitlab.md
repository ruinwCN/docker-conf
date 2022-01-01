# gitlab

### docker install 

```
url :gitlab.xxxx.com

docker run --detach \
  --hostname gitlab.xxxx.com \
  --publish 443:443 --publish 80:80 --publish 2222:22 \
  --name gitlab \
  --restart always \
  --volume /home/www/gitlab/config:/etc/gitlab \
  --volume /home/www/gitlab/logs:/var/log/gitlab \
  --volume /home/www/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
```



### check admin password

```
sudo docker exec -it gitlab /bin/bash
cat /etc/gitlab/initial_root_password
> Password: xxxxxxx

```

