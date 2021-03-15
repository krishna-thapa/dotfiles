### ZSH with iTerm(macos)
- [How to install and customise ZSH terminal on Mac OSX](https://steemit.com/code/@demwunz/how-to-get-a-customised-and-pretty-zsh-terminal-on-mac-osx)
- [iTerm2](https://iterm2.com/): iTerm2 is a replacement for Terminal
- [zplug](https://github.com/zplug/zplug): Zsh Plugin Manager
- [Zplugin](https://github.com/JRGGRoberto/zplugin): Zplugin is an elastic and fast Zshell plugin manager that will allow you to install everything from GitHub and other sites.
- [Spaceship ZSH](https://github.com/denysdovhan/spaceship-prompt): Spaceship is a minimalistic, powerful and extremely customizable Zsh prompt
- [exa](https://the.exa.website/): A modern replacement for ls
- [fzf](https://github.com/junegunn/fzf): a general-purpose command-line fuzzy finder.
- [The Fuck](https://github.com/nvbn/thefuck): Magnificent app which corrects your previous console command.

### [iTerm cheatsheet](https://gist.github.com/squarism/ae3613daf5c01a98ba3a)

### Custom alias
```
alias ll="exa -l -a"
alias ll1="exa -l -a -T --level=1 ."
alias ll2="exa -l -a -T --level=2 ."
alias ll3="exa -l -a -T --level=3 ."
```

### Zsh plugins on Github
- [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins)
- [Top popular Zsh plugins on Github](https://safjan.com/top-popular-zsh-plugins-on-github/)

### Look more details into: 
- [exa](https://github.com/ogham/exa)
- [autojump](https://github.com/wting/autojump): a faster way to navigate your filesystem

### Issues
- Where does iTerm2 store its settings?

  A: Preferences, including profiles, are stored in ~/Library/Preferences/com.googlecode.iterm2.plist. To modify it, use the "defaults" command. For example, to delete all settings, run:
  `defaults delete com.googlecode.iterm2`
- Have to do [manual installation](https://github.com/JRGGRoberto/zplugin#option-2---manual-installation) for the zplugin