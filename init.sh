#!/bin/bash

touch /etc/yum.repos.d/nginx.repo
echo "[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true

[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true" > /etc/yum.repos.d/nginx.repo

touch /etc/yum.repos.d/nginx.repo
echo "[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.8/rhel8-amd64
module_hotfixes=1
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1" > /etc/yum.repos.d/mariadb.repo

dnf update
dnf module enable nginx:mainline -y
dnf install epel-release -y
dnf update --refresh -y
dnf install \
    git \
    curl \
    wget \
    unzip \
    unrar \
    libuser \
    bind-utils \
    util-linux \
    util-linux-user \
    dnf-utils \
    postfix \
    mailx \
    certbot \
    python3-certbot-nginx \
    python3-cloudflare \
    python3-certbot-dns-cloudflare \
    dovecot \
    nginx \
    mariadb-server \
    mariadb -y

# ssh segure config
sed -ie '/^ChallengeResponseAuthentication/s/^.*$/ChallengeResponseAuthentication no/' /etc/ssh/sshd_config
sed -ie '/^PermitRootLogin/s/^.*$/PermitRootLogin no/' /etc/ssh/sshd_config
sed -ie '/^PasswordAuthentication/s/^.*$/PasswordAuthentication no/' /etc/ssh/sshd_config
sed -ie '/^UsePAM/s/^.*$/UsePAM no/' /etc/ssh/sshd_config
systemctl restart sshd

mkdir /etc/cloudflare
touch /etc/cloudflare/credential.ini