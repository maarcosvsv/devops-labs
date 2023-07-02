#/bin/sh
echo "Installing software-properties-common..."
sudo apt install software-properties-common
echo "Adding repository ppa:ansible/ansible..."
sudo apt-add-repository --yes --update ppa:ansible/ansible
echo "Updating..."
sudo apt -y update
echo "Installing ansible..."
sudo apt-get -y install ansible
echo "Updating hosts..."
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT

