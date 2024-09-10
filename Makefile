
include .env

start:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle --force --no-lock
	cp homedir/\[default\]/.zshrc ~/.zshrc
	source ~/.zshrc
	mkdir -p ~/.config/wezterm && cp -r homedir/\[default\]/.config/wezterm/ ~/.config/wezterm/
	mkdir -p ~/.config && cp homedir/\[default\]/.config/starship.toml ~/.config/starship.toml
# install default node version
	sh ~/.nvm/nvm.sh install --lts
	@sh ~/.nvm/nvm.sh use --lts

# install node:latest via nvm
# install latest version of python via uv
# install gvm go version manager, bison already installed via brew - https://github.com/moovweb/gvm
# install nix
## curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
# use nix to isolate dotenv environments with 
# install aws-azure-login npm install -g aws-azure-login
# install gcloud cli https://cloud.google.com/sdk/docs/install
# copy config files
### aws, git, 


