#!/bin/bash

# Runs Gitlab
docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 --publish 80:80 --publish 22:22 \
    --name gitlab \
    --restart always \
    --volume $HOME/Downloads/gitlab-server/config:/etc/gitlab \
    --volume $HOME/Downloads/gitlab-server/logs:/var/log/gitlab \
    --volume $HOME/Downloads/gitlab-server/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest

# Runs Jenkins
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 jenkins
git@172.17.0.2:ci-environment/my-awesome-project.git

# apt-get update && apt install pip

 # Install FTP server
docker run -d --name ftpd_server -p 21:21 -p 30000-30009:30000-30009 -e "PUBLICHOST=localhost" stilliard/pure-ftpd:hardened
pure-pw useradd bob -f /etc/pure-ftpd/passwd/pureftpd.passwd -m -u ftpuser -d /home/ftpusers/bob
