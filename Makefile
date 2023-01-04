DOTTED_PATH=dotted

tie:
	cp ~/.config/starship.toml ./.config/
	cp ~/.zshrc ./$(DOTTED_PATH)
	cp ~/.skhdrc ./$(DOTTED_PATH)
	cp ~/.yabairc ./$(DOTTED_PATH)
	cp -r ~/.config/nvim ./.config/

	
untie:
	cp ./.config/starship.toml ~/.config/
	cp ./$(DOTTED_PATH)/.zshrc ~/
	cp ./$(DOTTED_PATH)/.skhdrc ~/
	cp ./$(DOTTED_PATH)/.yabairc ~/
	cp -r ./.config/nvim ~/.config/


ltie:
	cp ~/.vimrc ./$(DOTTED_PATH)


luntie:
	cp ./$(DOTTED_PATH)/.vimrc ~/


bootstrap:
	# Some MacOS specifics
	defaults write com.apple.screencapture location /Users/$(USER)/Desktop/Screenshots
	defaults write com.apple.finder CreateDesktop false
	killall Finder 
