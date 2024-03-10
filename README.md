# dotfiles

Minimal dotfiles and more. Nothing here has been tested on anything other than my own environment.

- macOS Sonoma 14.3.1
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
4. Enable Control+/ in macOS Terminal app (logout and login required):

```
mkdir -p ~/Library/KeyBindings && echo '{\n    "^/" = "noop:";\n}' > ~/Library/KeyBindings/DefaultKeyBinding.dict
```

A Dracula theme that follows the [official spec](https://spec.draculatheme.com/) is also available [here](themes/Dracula.terminal). The "official" one [does not](https://github.com/dracula/terminal-app/issues/6). If you decide to use it, also change `ZSH_COLORIZE_STYLE` to `"dracula"` and `BAT_THEME` to `"Dracula"` in `~/.zshrc`.

## Homebrew

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew install bat eza fd fzf pygments
```

## Zsh + Oh My Zsh

1. Create symlinks:

```
$ ln -s ~/Code/dotfiles/zsh/.zprofile ~/.zprofile
$ ln -s ~/Code/dotfiles/zsh/.zshrc ~/.zshrc
$ ln -s ~/Code/dotfiles/ohmyzsh ~/.oh-my-zsh
$ ln -s ~/Code/dotfiles/fd/.fdignore ~/.fdignore
```

2. Restart your terminal.

### Maintenance

Oh My Zsh plugins and themes like `zsh-autosuggestions` and `zsh-syntax-highlighting`,
are included as git subtrees. Run `make sync` to update them from upstream.

## LaTeX

1. Install MacTex

```
brew install mactex-no-gui --cask
```

2. Update packages

```
sudo tlmgr update --self
sudo tlmgr update --all
```
