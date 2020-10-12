# SET UP THE ENVIRONMENT

sudo apt remove unattended-upgrades
sudo apt update
sudo apt-upgrade -y
sudo apt install git curl tree build-essential gcc make perl dkms gvfs-bin -y
# Install the VBox, if needed
mkdir VBox
cd /media/vl/VBox*
cp . /home/vl/install/VBox
cd /media/vl/install
sudo VBox/VBoxLinuxAdditions.run

# Install the editors
wget -O code.deb https://go.microsoft.com/fwlink/?LinkID=760868
wget -O atom.deb https://atom.io/download/deb

sudo apt --fix-broken install -y
sudo dpkg -i atom.deb
sudo dpkg -i code.deb

# SET UP RUBY & SLATE
# Using railgirls' repo
# Slate docs:
# https://github.com/slatedocs/slate/wiki

git clone https://github.com/railsgirls/installation-scripts.git
bash installation-scripts/rails-install-ubuntu.sh

sudo apt install ruby ruby-dev libffi-dev zlib1g-dev liblzma-dev nodejs patch -y
sudo gem update --system
sudo gem install bundler
# Fork slate https://github.com/slatedocs/slate.git

# Clone the forked slate https://github.com/vassily-msq/slate.git
git clone https://github.com/vassily-msq/slate.git





# You can run slate in two ways, either as a server process for development, or just build html files.
cd slate
sudo bundle install
# Use `bundle info [gemname]` to see where a bundled gem is installed.

# Choose Option 1 - The server will run on port 4567
bundle exec middleman server
# Choose Option 2
# bundle exec middleman build


# SET UP ENTIRE JS ENVIRONMENT
# sudo apt install nodejs


# SET UP PHP & XAMPP 
# Download XAMPP
# chmod 755 xampp-linux-*-installer.run
# sudo ./xampp-linux-*-installer.run


# SET UP DOCKER 
