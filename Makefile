install: prepare provision

become=--ask-become-pass
ansible=ansible-playbook $(CURDIR)/playbook.yml -i $(CURDIR)/inventory-local.ini -vv

prepare:
	sudo apt-get update
	sudo apt-get -y install python-pip
	sudo pip install ansible

provision:
	$(ansible) $(become)

vagrant: prepare
	$(ansible)

test:
	$(ansible)


.PHONY: prepare 
