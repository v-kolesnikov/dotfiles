install: prepare provision

become=--ask-become-pass
ansible=ansible-playbook $(CURDIR)/playbook.yml -i local

install_ansible:
	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible

vim:
	$(ansible) $(become) --tags=vim

provision:
	$(ansible) $(become)

vagrant: prepare
	$(ansible)

test:
	$(ansible)


# .PHONY:
