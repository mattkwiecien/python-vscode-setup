# Python VSCode Setup

This repo contains my go-to configuration for new python projects.  It uses and does the following:

1. `uv` for python package management
2. `ruff` for linting
3. `direnv` for virtual env and environment configuration

Therefore you must

```zsh
brew install uv
brew install ruff
brew install direnv
```

for this repo to work.

## VS Code Setup

I also include in here my default user settings which apply to all my VSCode projects.  This includes auto format with ruff on save,
sidebar location, and various toml files for my python projects.

Under the `.vscode` directory, I have the relevant VS Code files needed to facilitate the above.
