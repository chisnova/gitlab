FROM gitlab/gitlab-ce:13.10.2-ce.0


RUN apt-get update && apt-get install -y cron

ADD cron-gitlab-backup /etc/cron.d/gitlab-backup

RUN chmod 0644 /etc/cron.d/gitlab-backup

CMD cron
