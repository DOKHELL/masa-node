sudo apt update
sudo apt upgrade -y
cd $HOME
sudo apt install dpkg
sudo apt install snapd
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
sudo apt install python3.9
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
snap find telegram-desktop
snap install telegram-desktop
sudo snap install webstorm --classic
sudo snap install discord
sudo snap install slack --classic
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb
sudo snap install pycharm-professional --classic
