#!bin/bash
# MAKE SURE THAT YOU ARE NOT THE ROOT USER WHILE DOING THIS OTHERWISE NON-ROOT USERS WILL NOT BE ABLE TO USE RUBY

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
sudo apt install -y rbenv
rbenv install 2.5.0
rbenv global 2.5.0
ruby -v
sudo gem install bundler -v 1.16.6
rbenv rehash
#INSTALL RAILS
sudo apt-get install ruby2.5-dev -y
sudo gem install rails -v 5.2.3
rbenv rehash
rails -v
