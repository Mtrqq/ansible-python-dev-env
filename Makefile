install:
	sudo apt install python3 python3-pip
	/usr/bin/python3 -m pip install ansible
	ansible-galaxy collection install community.general

playbook:
	ansible-playbook ./playbooks/bootstrap-git.yml \
	./playbooks/bootstrap-pyenv.yml \
	./playbooks/bootstrap-poetry.yml \
	./playbooks/bootstrap-pre-commit.yml \
	./playbooks/bootstrap-docker.yml \
	./playbooks/bootstrap-vs-code.yml \
	-i inventory.yml -K
