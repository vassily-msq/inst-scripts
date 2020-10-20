# SET UP THE ENVIRONMENT

sudo apt remove unattended-upgrades
sudo apt update
sudo apt-upgrade -y
sudo apt install git curl tree snapd build-essential guake gcc make perl dkms gvfs-bin -y
# Install the VBox, if needed
mkdir VBox
cd /media/vl/VBox*
cp . /home/vl/install/VBox
cd /media/vl/install
sudo bash VBox/VBoxLinuxAdditions.run

# Install the editors
wget -O code.deb https://go.microsoft.com/fwlink/?LinkID=760868
wget -O atom.deb https://atom.io/download/deb

sudo apt --fix-broken install -y
sudo dpkg -i atom.deb
sudo dpkg -i code.deb

# SET UP RUBY & SLATE
# sudo bash ./ruby-slate.sh



# SET UP ENTIRE JS ENVIRONMENT
# sudo bash npm-node.sh



# SET UP PHP & XAMPP 
# Download XAMPP
# chmod 755 xampp-linux-*-installer.run
# sudo ./xampp-linux-*-installer.run

# SET UP PYTHON
# python.sh


# SET UP DOCKER 
