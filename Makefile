VIRTUALENV_NAME = $(shell head -n 1 .python-virtualenv)
VIRTUALENV_BIN_PATH = ~/.pyenv/versions/$(shell head -n 1 .python-version)/envs/${VIRTUALENV_NAME}/bin

create-jupyter-kernel:
	@${VIRTUALENV_BIN_PATH}/pip install ipykernel
	@${VIRTUALENV_BIN_PATH}/ipython kernel install --user --name=${VIRTUALENV_NAME}