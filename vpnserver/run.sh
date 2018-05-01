#/bin/sh
docker-compose up --build -d
sudo ip route add 10.8.0.0/24 via 172.18.0.111 #vpnserver internal docker ip
