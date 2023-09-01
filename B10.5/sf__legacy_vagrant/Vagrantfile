# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
     config.vm.box = "ubuntu/trusty64"
   
   # Install Postgresql-8.4 on VirtualBox via vagrant
   
      config.vm.provision "shell", inline: <<-SHELL
   # Update packages
     sudo apt update
   # Install wget libpq5
     sudo apt install -y wget libpq5
   # Download PG8.4_client
     wget https://old-releases.ubuntu.com/ubuntu/pool/universe/p/postgresql-8.4/postgresql-client-8.4_8.4.8-2_amd64.deb --no-check-certificate
   # Download PG8.4_server
     wget https://old-releases.ubuntu.com/ubuntu/pool/universe/p/postgresql-8.4/postgresql-8.4_8.4.8-2_amd64.deb --no-check-certificate
   # Install client and server
     sudo dpkg -i postgresql-client-8.4_8.4.8-2_amd64.deb postgresql-8.4_8.4.8-2_amd64.deb
     sudo DEBIAN_FRONTEND=noninteractive apt-get -f install -y -q
   SHELL
   end
