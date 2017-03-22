cd /var
touch swap.img
chmod 600 swap.img
dd if=/dev/zero of=/var/swap.img bs=1024k count=2000
mkswap /var/swap.img
swapon /var/swap.img

cd ~

apt-get-update

apt-get -y install screen autoconf bison build-essential curl git-core libapr1 libaprutil1 libcurl4-openssl-dev libgmp3-dev libpcap-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libsvn1 libtool libxml2 libxml2-dev libxslt-dev libyaml-dev locate ncurses-dev openssl wget xsel zlib1g zlib1g-dev ruby-dev

git clone https://github.com/rapid7/metasploit-framework.git

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
echo "source /etc/profile.d/rvm.sh" >> /root/.profile
cd metasploit-framework
rvm install ruby-2.3.3
cd ..
cd metasploit-framework
gem install bundler
bundle install
