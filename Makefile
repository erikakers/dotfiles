DIR="${HOME}/dotfiles"

setup:
	ln -sv ~/.dotfiles/.freshrc ~

brew:
	brew tap Homebrew/bundle
	brew tap caskroom/versions
	brew bundle

nvm:
	curl https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | sh
	source ~/.nvm/nvm.sh && nvm install 8
	source ~/.nvm/nvm.sh && nvm alias default 8

antigen:
	cd ~ && git clone https://github.com/zsh-users/antigen.git