## Terminator

### Install
```
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
```
### Color schema 
[Gruvbox dark](https://github.com/egel/terminator-gruvbox)

### Shortcuts:
```
close_term = Shift+Ctrl+Delete
new_tab = Shift+Ctrl+Space
split_horiz = Shift+Ctrl+Down
split_vert = Shift+Ctrl+Right
```

## Install exa

[A modern replacement for ls.](https://the.exa.website/)

```
wget http://archive.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
sudo apt-get install ./exa_0.9.0-4_amd64.deb
```

### Aliases
```
alias ll1="exa -l -a -T --level=1 ."
alias ll2="exa -l -a -T --level=2 ."
alias ll3="exa -l -a -T --level=3 ."
alias ll="exa -l -a --header --git"
alias l="exa --icons"
alias la="exa --icons -a"
```

## Install fzf

[general-purpose command-line fuzzy finder.](https://github.com/junegunn/fzf) 

```
wget -q https://script.install.devinsideyou.com/fzf
chmod +x fzf && ./fzf
```

## Install bat

[syntax highlighting for a large number of programming and markup languages] (https://github.com/sharkdp/bat)

```
wget -q https://script.install.devinsideyou.com/bat
sudo chmod +x bat && ./bat
```

### Aliases
```
alias search="fzf --preview 'bat {-1} --color=always'"
```

## Install The Fuck

[Corrects errors in previous console commands.](https://github.com/nvbn/thefuck)

```
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck
```

It is recommended that you place this command in your .bash_profile, .bashrc, .zshrc or other startup script:

`eval $(thefuck --alias)`

## Make terminator emulator appear and disappear like guake

[Solution here](https://askubuntu.com/questions/174325/how-do-i-make-terminator-emulator-appear-and-disappear-like-guake)

## Install custom fonts 
- Download the [nerd fonts](https://www.nerdfonts.com/)
- Unzip and copy to `~/.local/share/fonts`
- Run the command `fc-cache -fv` to manually rebuild the font cache
- Update the terminator fonts

## Install [hstr](https://github.com/dvorka/hstr)
```
sudo add-apt-repository ppa:ultradvorka/ppa
sudo apt-get update
sudo apt-get install hstr
```
