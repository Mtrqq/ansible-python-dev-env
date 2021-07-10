install:
	sudo apt install python3 python3-pip
	/usr/bin/python3 -m pip install ansible
	ansible-galaxy collection install community.general

playbook:
	ansible-playbook ./playbooks/bootstrap-git.yml -i inventory.yml
	ansible-playbook ./playbooks/bootstrap-pyenv.yml -i inventory.yml
	ansible-playbook ./playbooks/bootstrap-poetry.yml -i inventory.yml
	ansible-playbook ./playbooks/bootstrap-pre-commit.yml -i inventory.yml
	ansible-playbook ./playbooks/bootstrap-docker.yml -i inventory.yml -K
	ansible-playbook ./playbooks/bootstrap-vs-code.yml -i inventory.yml
