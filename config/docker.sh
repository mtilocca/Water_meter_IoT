# this script is a guide on how to set up docker 
# and docker-compose on raspberry pi 


sudo apt update
sudo apt upgrade

sudo apt install -y apt-transport-https ca-certificates software-properties-common


curl -fsSL https://download.docker.com/linux/raspbian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=armhf signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/raspbian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt update


sudo apt install -y docker-ce docker-ce-cli containerd.io


sudo systemctl enable docker
sudo systemctl start docker


sudo docker --version


# docker-compose installation


sudo apt-get update
sudo apt-get install docker-compose-plugin


docker compose version