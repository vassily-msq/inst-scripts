# Using railgirls' repo
# Slate docs:
# https://github.com/slatedocs/slate/wiki

git clone https://github.com/railsgirls/installation-scripts.git
sudo bash installation-scripts/rails-install-ubuntu.sh

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