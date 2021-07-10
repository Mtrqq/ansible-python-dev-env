install:
	sudo apt install ansible -y
	ansible-galaxy collection install community.general

playbook:
	ansible-playbook ./playbooks/bootstrap-git.yml \
	./playbooks/bootstrap-pyenv.yml \
	./playbooks/bootstrap-poetry.yml \
	./playbooks/bootstrap-pre-commit.yml \
	./playbooks/bootstrap-docker.yml \
	./playbooks/bootstrap-vs-code.yml \
	-i inventory.yml -K
