# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

provision_script = <<SCRIPT
  sudo apt-get install -y git
  git clone https://github.com/justcxx/dotfiles.git /var/tmp/dotfiles
  cd /var/tmp/dotfiles
  git pull -f
  make vagrant
SCRIPT

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network 'private_network', ip: '10.10.0.1'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = 1024
    vb.cpus = 4
  end

  config.vm.provision 'shell', inline: provision_script, privileged: false
end
