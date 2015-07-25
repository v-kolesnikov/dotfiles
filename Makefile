install: prepare provision

prepare:
	sudo apt-get update
	sudo apt-get -y install python-pip
	sudo pip install ansible

provision:
	ansible-playbook $(CURDIR)/playbook.yml -i $(CURDIR)/inventory-local.ini -vv

.PHONY: prepare ansible
