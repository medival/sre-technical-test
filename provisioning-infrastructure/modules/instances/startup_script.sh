sudo useradd -m medival -s /bin/bash -G sudo
sudo apt-get update
# sudo apt-get dist-upgrade -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo curl -O /etc/ssh/ https://gist.githubusercontent.com/medival/82819390ee218076bcb08db852b271b2/raw/35f28b1f2ea4b027645b082648d3f0d79001352c/sshd_config
sudo systemctl restart ssh