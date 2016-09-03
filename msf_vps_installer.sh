#!/bin/bash
# 
# Metasploit installer for Debian (Jessie) VPS.
# works out of the box on new 8.5 Debian servers. 
#
# Do not run as root, RVM bundle will not work. Add a user, login with that user, and then run this script.
# Metasploit requires the following packages:
#
# apt-get -y install autoconf bison build-essential curl git-core libapr1 libaprutil1 libcurl4-openssl-dev libgmp3-dev libpcap-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libsvn1 libtool libxml2 libxml2-dev libxslt-dev libyaml-dev locate ncurses-dev openssl wget xsel zlib1g zlib1g-dev
#
# YMMV!
# https://medium.com/@iraklis

PURPLE='\033[1;35m'
NC='\033[0m'

cd ~

echo -e "${PURPLE}Cloning Metasploit from GitHub${NC}"
echo -e "${PURPLE}------------------------------${NC} \n"

git clone https://github.com/rapid7/metasploit-framework.git


echo -e "${PURPLE}Installing RVM, this might take a while (5-10 mins)${NC}"
echo -e "${PURPLE}---------------------------------------------------${NC} \n"

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
cd ~/metasploit-framework
rvm --install .ruby-version
gem install bundler
bundle install


echo -e "${PURPLE}All done. Type ./msfconsole to run metasploit${NC}"
