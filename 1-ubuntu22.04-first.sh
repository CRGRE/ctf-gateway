#!/usr/bin/env bash

# stark-industries -> V_S4EQ-RxAKYJf7-5AMhxNwti
passwd
apt update -y
apt upgrade -y
reboot


sed -i 's/#Port 22/Port 61011/' /etc/ssh/sshd_config
grep 'Port ' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
grep 'PasswordAuthentication ' /etc/ssh/sshd_config
sed -i 's/UsePAM yes/UsePAM no/' /etc/ssh/sshd_config
grep 'UsePAM ' /etc/ssh/sshd_config
systemctl restart sshd
# check


apt install mc nano git netcat nmap curl sudo sqlite -y


# https://www.digitalocean.com/community/tutorials/how-to-set-up-an-endlessh-tarpit-on-ubuntu-22-04
apt install build-essential libc6-dev git -y
git clone https://github.com/do-community/endlessh
cd endlessh
make
mv ./endlessh /usr/local/bin/

setcap 'cap_net_bind_service=+ep' /usr/local/bin/endlessh

sed -i 's/#AmbientCapabilities/AmbientCapabilities/' util/endlessh.service
grep AmbientCapabilities util/endlessh.service
sed -i 's/PrivateUsers/#PrivateUsers/' util/endlessh.service
grep PrivateUsers util/endlessh.service
cp util/endlessh.service /etc/systemd/system/

mkdir /etc/endlessh
echo 'Port 22' > /etc/endlessh/config 

systemctl --now enable endlessh
systemctl status endlessh


# https://docs.docker.com/engine/install/ubuntu/
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do apt-get remove $pkg; done
# Add Docker's official GPG key:
apt-get update
apt-get install ca-certificates curl gnupg
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

systemctl --now enable docker
systemctl status docker


useradd --home-dir /opt/ctf --shell /bin/bash --user-group --groups docker,systemd-journal ctf
passwd -x -1 ctf
passwd ctf 
mkdir /opt/ctf
cp -R ~/.ssh /opt/ctf/.ssh
chown -R ctf:ctf /opt/ctf

git clone https://github.com/CRGRE/ctf-gateway
cd ctf-gateway
# setup
docker compose up -d && docker compose logs -f