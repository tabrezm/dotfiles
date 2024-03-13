sync:
	GIT_EDITOR=true git subtree pull --prefix ohmyzsh https://github.com/ohmyzsh/ohmyzsh master --squash
	GIT_EDITOR=true git subtree pull --prefix ohmyzsh/custom/plugins/zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions master --squash
	GIT_EDITOR=true git subtree pull --prefix ohmyzsh/custom/plugins/zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting master --squash
	GIT_EDITOR=true git subtree pull --prefix ohmyzsh/custom/plugins/forgit https://github.com/wfxr/forgit.git master --squash
	GIT_EDITOR=true git subtree pull --prefix ohmyzsh/custom/themes/spaceship-prompt https://github.com/spaceship-prompt/spaceship-prompt.git master --squash
	git push origin master