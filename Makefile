all:
				ansible-playbook $(CURDIR)/dotfiles.yml -i local

git:
				ansible-playbook $(CURDIR)/dotfiles.yml -i local --tags=git

vim:
				ansible-playbook $(CURDIR)/dotfiles.yml -i local --tags=vim

tmux:
				ansible-playbook $(CURDIR)/dotfiles.yml -i local --tags=tmux


install_ansible:
				sudo apt-get install software-properties-common
				sudo apt-add-repository ppa:ansible/ansible
				sudo apt-get update
				sudo apt-get install ansible

# .PHONY:
