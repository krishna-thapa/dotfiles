## Terminator

### Install Terminator or you can install from software store
```
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
```

## Installing Zsh in Ubuntu Linux
```
sudo apt install zsh
zsh --version
echo $SHELL
```

Set it as the default shell
```
chsh -s $(which zsh) 
or 
chsh -s /usr/bin/zsh
```

Revert to Old Bash Shell
```
$ sudo apt --purge remove zsh
$ chsh -s $(which "SHELL NAME")
```

## Install OH-MY-ZSH in Ubuntu
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Removing OH-MY-ZSH in Ubuntu Linux
```
uninstall oh_my_zsh
```

## Color schema 
[Gruvbox dark](https://github.com/egel/terminator-gruvbox)

## Shortcuts:
```
close_term = Shift+Ctrl+Delete
new_tab = Shift+Ctrl+Space
split_horiz = Shift+Ctrl+Down
split_vert = Shift+Ctrl+Right
search = Ctrl+F
```

## Install zsh plugins
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```
- Add in `~/.zshrc` plugin: `plugins=( [plugins...] zsh-syntax-highlighting)`

## Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- Font use Meslo Nerd Font as Bold 13: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
- https://github.com/romkatv/powerlevel10k
- Restart Zsh.
- Type p10k configure if the configuration wizard doesn't start automatically.


## Install exa

[A modern replacement for ls.](https://the.exa.website/)

```
cargo install exa
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

## Install custom fonts or you can just click the install button 
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
