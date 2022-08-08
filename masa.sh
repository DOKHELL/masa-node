sudo apt update && sudo apt upgrade -y
sudo apt install curl tar wget clang ca-certificates gnupg lsb-release pkg-config libssl-dev jq build-essential git make ncdu net-tools -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y
sudo systemctl start docker
sudo systemctl enable docker

sudo apt-get install docker-compose

ver="1.17.11"
cd $HOME
wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz"
rm "go$ver.linux-amd64.tar.gz"
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> ~/.bash_profile
source ~/.bash_profile
cd $HOME
git clone https://github.com/masa-finance/masa-node-v1.0
cd masa-node-v1.0
PRIVATE_CONFIG=ignore sudo docker-compose up -d
docker ps
