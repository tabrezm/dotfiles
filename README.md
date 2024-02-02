# dotfiles

Minimal dotfiles and more. Nothing here has been tested on anything other than my own environment.

- macOS Sonoma 14.2.1
- Zsh + Oh My Zsh
- Visual Studio Code

## General

This section contains assets useful for multiple apps.

### Clone repo

```
$ mkdir ~/Code
$ cd ~/Code
$ git clone https://github.com/tabrezm/dotfiles.git
```

### SFMono Nerd Font Complete

Patched version of the [SF Mono font](https://developer.apple.com/fonts/) by
Apple with all available glyphs from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).

1. Locate the fonts [here](fonts).
2. Double-click each file and click "Install Font" in the dialog.

## macOS dock settings

```shell
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock size-immutable -bool true
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock show-process-indicators -bool false
killall Dock
```

## macOS Terminal

The GitHub Dark Dimmed theme is a port of the corresponding [VS Code theme](https://github.com/primer/github-vscode-theme).

0. Install the SFMono Nerd Fonts.
1. Locate the theme [here](themes/GitHub%20Dark%20Dimmed.terminal).
2. Double-click the file to import it.
3. Go to Terminal >> Preferences >> Profiles. Select the theme and click "Default'.

## Homebrew

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew install eza pygments
```

## Zsh + Oh My Zsh

1. Create symlinks:

```
$ ln -s ~/Code/dotfiles/zsh/.zprofile ~/.zprofile
$ ln -s ~/Code/dotfiles/zsh/.zshrc ~/.zshrc
$ ln -s ~/Code/dotfiles/ohmyzsh ~/.oh-my-zsh
```

2. Restart your terminal.

Oh My Zsh and plugins that require installation, like `zsh-autosuggestions` and `zsh-syntax-highlighting`,
are included as git subtrees. Run the following commands to update them from upstream:

```
$ git subtree pull --prefix ohmyzsh https://github.com/ohmyzsh/ohmyzsh master --squash
$ git subtree pull --prefix ohmyzsh/custom/plugins/zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions master --squash
$ git subtree pull --prefix ohmyzsh/custom/plugins/zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting master --squash
$ git push
```

## LaTeX

1. Install MacTex

```
brew cask install mactex-no-gui
```

2. Update packages

```
sudo tlmgr update --self
sudo tlmgr update --all
```
