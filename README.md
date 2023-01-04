# Dotfiles

Repository made for managing configuration files across multiple devices.



## Getting started
There are 4 (5 in future) commands available for dotfiles managment:


1. `make tie` - copies all dotfiles from this repo onto your local machine (Supports only default config files paths)
2. `make untie` - collects dotfiles from your local machine to this repo (After this you probably want to push your changes)
3. `make ltie` and `make luntie` - the light version of previous commands. Made to pull and push only .vimrc. So it provides you with a minimal vim config
which you can use on prod machines.
5. `make bootstrap` (not yet supported) - sets up your local working environment (Only MacOS supported)


## Future
1. Implement bootstrapping (Install omz, all deps, yabai, skhdrc)
2. Add iterm configuration
3. Support fonts managment
4. Write first setup hints
