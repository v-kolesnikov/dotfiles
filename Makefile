install:
				ansible-playbook playbook.yml -i local

nvim:
				ansible-playbook playbook.yml -i local --tags=nvim

install_ansible:
				sudo apt-get install software-properties-common
				sudo apt-add-repository ppa:ansible/ansible
				sudo apt-get update
				sudo apt-get install ansible

test:
				ansible-lint playbook.yml
				ansible-playbook playbook.yml -i local --check --tags=dotfiles --skip-tags=bash
