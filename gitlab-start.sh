sudo docker build --rm -t gitlab/gitlab-backup .

sudo docker run --detach \
  --publish 5555:5555\
  --name gitlab \
  --restart always \
  --volume /home/chisnova/gitlab/config:/etc/gitlab \
  --volume /home/chisnova/gitlab/logs:/var/log/gitlab \
  --volume /home/chisnova/gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-backup:latest
