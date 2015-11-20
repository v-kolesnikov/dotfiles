all: git vim tmux

git:
				ansible-playbook $(CURDIR)/git.yml -i local

vim:
				ansible-playbook $(CURDIR)/vim.yml -i local

tmux:
				ansible-playbook $(CURDIR)/tmux.yml -i local


install_ansible:
				sudo apt-get install software-properties-common
				sudo apt-add-repository ppa:ansible/ansible
				sudo apt-get update
				sudo apt-get install ansible

# .PHONY:
