VAGRANT_API_VERSION = 2

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.box_check_update = false

  config.ssh.forward_agent = true

  config.vm.network 'private_network', type: 'dhcp'

  config.vm.synced_folder '.', '/vagrant', type: 'nfs'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
  end

  config.vm.provision 'ansible_local' do |ansible|
    ansible.playbook = 'vagrant.yml'
  end
end
