
tie:
	cp ~/.config/starship.toml ./.config/
	cp ~/.zshrc ./
	cp ~/.skhdrc ./
	cp ~/.yabairc ./
	cp -r ~/.config/nvim ./.config/

	
untie:
	cp ./.config/starship.toml ~/.config/
	cp ./.zshrc ~/
	cp ./.skhdrc ~/
	cp ./.yabairc ~/
	cp -r ./.config/nvim ~/.config/

bootstrap:
	# Some MacOS specifics
	defaults write com.apple.screencapture location /Users/$(USER)/Desktop/Screenshots
	defaults write com.apple.finder CreateDesktop false
	killall Finder 
