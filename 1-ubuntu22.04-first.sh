#!/usr/bin/env bash

# stark-industries -> V_S4EQ-RxAKYJf7-5AMhxNwti
passwd

cat > ~/.ssh/authorized_keys <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7codPS0UMDPRa3YD2Jfnr4S0f8fl/oo3q2gpgQ9iwSBxsgW6yLIBj5+6oKLU9Ux64g+8GBF5rKHO/Euwv6knqECpcaQ7x1bk3R/9nInWS6m5r7v0dRUMVUcqwwZ2/ROosp26r9B+AHY43CgP7C7inQilZbitA69ArJc3DKGtzDgebcFOKCOZ6y9OhlDRIgC82dIWZCRkqg8aIUmaSXPKHGV7LwDbDwkGIljwJuGOf/CXLR9f0qGOLGfWSI0pY1JxzsJbDVZ+ltKN8u7y+npv/9+x2iFfUgPVrVyWvaEmxG1F1ERxtSg1brCaXF4j/8vxt86gWLFn8aAgjvyk1cqGonXaUtldmIs+Yuj3I6mp+2GRj3LpUSBUeBWpmYoAr1VDDasY35y8A1oaitV3lCR4mkv18aiM5zPWnTzKwZJfc5p0XgeE8PBSXveD/WTPhQJgmW3RQr9dZoEOihFqZrj+SbrpjaEt09toKh0nUSuy5E6pSxBb2QGKStZ67pON5Ah0= kalabar@kali
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC81sxNkgXve1MqKTjId8BmwXLeX1P8fsJP3Ka+Std3HTMgx67er448YinE83zdvoPh8NgywrRSZDWU8di2XPjXUsyVCInl9QXUGVwQ+BnCLUYmwl4zttHrRcTTB64uPHi2q9XoyCjT9XYjXJ5LDN8g4Fm0BvHEr55sx3ZI6nFnt1A1H62FdX7cf0GrWhyAqwE+EHC59Q63IHu0M//zotAodpgFcKaW+BaAp6cxiNlq7g0j7IslVPmsX4pWUC+KcNkaWDXg0A/OOuAE+XlftOTZkNUWEWQgQTrOu8XG2i3VTM4JcZtbtu8lEwp5RVsIdTmYoCgZ1ijjijv9kz/GT7R7uYnqklA/i7m6dQNi8KGULfxG+dO4h9USzdcuU9wRpaQxfHbYM6B7zS2pv1/6VJBZFJ8wNMb1nxDkdc7jPQH3oXxCQQKKcdHYzz71bqVk1tKU8P5F3SoKJiSBgs9Iwtgw+pyXGkuOyPluI+ur5MarZQXnKw9VEdNztwHJQR7dqnE= ilakali@kali
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrauSxTyIeYdgxapwVvwT1aaRFdp3yC60XuUUvZx0TFH/nqhwm1Khww2qTQK+WLbonPVRvX9/+vhXiv7vOkzkkti3GNloiEltdrm3S08AfzN1sj0AzoQOxkRS1OSIyf1qU7zfviX0seHvSL0YMOoUbe6i2UrFgx1v0P/w2dDvymueSnpLE3xQgjKXyBLVPWbldXR+O+HOFpIGHpLYmgzDwudl83ZtjzdqGZH2qk33aL/eWYzWs59JufGDI88PWZnQbYlsXIQAAhVIKvXfLb6hmPlGtlBN8CMDUKuYzygVHwGE/K87a5EIEKb4HqdxvBMAdgc5rSyAQkQAMKZ5IEDthjPSZFowfsv1oZHUJlEsDiQa13LatQpy/iIz58ZOIrvfJSa9kwmiwoTOzxiI6hZtk84lP2slvMajNmLSCrHorm/mHgDwkoSKi4DSwg7zOoEoitkCT4SrGe4zmnsnliWYymShuVRJZ240HiXglEjEZz6A2R8EIpUsLu+zInphJJms= stepan@kali
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDYxNMknhI9R5uKYYWPEkUQAn7UZdofFMPWlTGhtNoDukEFstNdtVP6VjB5AfH7rzD8CyPvZa+rilPNPxHvz8ClmZrRP6ii8gHk8Fwb3k1l+UtN9SbewZMAy3ovEez1K7tDjwDeUAcIHhSiTr306sUpaANnoxVNEIONzQheplOwkGQ8J5296kVJDUowRnEvDo/GyctUTj4Dkf39oxsjpOoTANWR68q/oFMrXH9uH0QVWe8k2fBJKfxSABQ/cS3dusi5Sy1RJbfFkgb+OUgMTHUiKodGuY1Lgz6XMLMmPVAkqV5hw+IQ2zU3KOgAYw/Ixst5OTZyabIl89lWuu91b58CrctbhdFFEArSXyCeo3oULc1z4a1P7UDIq5Zun2X1eMktngLbtTOsALyH2QYKTZ1OWmUA9sRYWEv0b7rH6AWfAOkkxC5PylxIiLQb05J23o4Lfv2xwZbnpadiJZCmqbzS3StgSt51swwq5AKiJsIux5Ls1j7RsQ3Zz1uevxFyD0= petch@LAPTOP-POTLC65I
EOF

apt update -y
apt upgrade -y
reboot


sed -i 's/#Port 22/Port 63964/' /etc/ssh/sshd_config
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


# scp -P 61011 C:\Users\petch\Downloads\images-dump.zip ctf@185.250.149.127:~
mkdir ~/images-dump
cd ~/images-dump
unzip ../images-dump.zip
for tar in $(ls); do
    docker load -i $tar
done
# docker tag 39978a50f615 docker.elastic.co/logstash/logstash:8.10.0

cd ~
git clone https://github.com/CRGRE/ctf-gateway
cd ctf-gateway
# setup
docker compose up -d && docker compose logs -f




# after inspection
# 
ufw allow 22
ufw allow 7000
ufw allow 5050
ufw allow from 203.0.113.103/24 proto tcp to any port 63964