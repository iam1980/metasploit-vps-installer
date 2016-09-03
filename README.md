# Metasploit installer for Debian (Jessie) VPS.

Metasploit installer for Debian (Jessie) VPS, works out of the box on new 8.5 Debian servers. 

Do not run as root, RVM bundle will not work. Add a user, login with that user, and then run this script.
Metasploit requires the following packages:

autoconf bison build-essential curl git-core libapr1 libaprutil1 libcurl4-openssl-dev libgmp3-dev libpcap-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libsvn1 libtool libxml2 libxml2-dev libxslt-dev libyaml-dev locate ncurses-dev openssl wget xsel zlib1g zlib1g-dev

## Instructions
```
adduser msfdev
apt-get update
apt-get -y install autoconf bison build-essential curl git-core libapr1 libaprutil1 libcurl4-openssl-dev libgmp3-dev libpcap-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libsvn1 libtool libxml2 libxml2-dev libxslt-dev libyaml-dev locate ncurses-dev openssl wget xsel zlib1g zlib1g-dev

su - msfdev
wget https://gist.githubusercontent.com/iam1980/e020a4cf4a082fe23818e04ae268d74a/raw/b764b9d1c4a040cb7a0873320cd4acfa0e8bcbdc/msf_vps_installer.sh
bash msf_vps_installer.sh
```

YMMV!
# https://medium.com/@iraklis

