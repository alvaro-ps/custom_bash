export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# to install the pre-commit in a repo, just run:
# pre-commit install -c /path/to/pre-commit-config.yaml
