congigure_git:
				ansible-playbook $(CURDIR)/git.yml -i local

congigure_vim:
				ansible-playbook $(CURDIR)/vim.yml -i local

install_ansible:
				sudo apt-get install software-properties-common
				sudo apt-add-repository ppa:ansible/ansible
				sudo apt-get update
				sudo apt-get install ansible

# .PHONY:
