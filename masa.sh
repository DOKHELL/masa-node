function installDocker {
	if exists docker; then
		sleep 1
	else
		echo -e '\n\e[42mInstall Docker\e[0m\n' && sleep 1
		curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
	fi
}

function installDockerCompose {
	echo -e '\n\e[42mInstall Docker Compose\e[0m\n' && sleep 1
	wget https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
	chmod +x docker-compose-Linux-x86_64
	mv docker-compose-Linux-x86_64 /usr/bin/docker-compose
}

sudo apt update && sudo apt upgrade -y
sudo apt install curl tar wget clang ca-certificates gnupg lsb-release pkg-config libssl-dev jq build-essential git make ncdu net-tools -y

installDocker
installDockerCompose

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
