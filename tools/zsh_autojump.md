# Zsh And Autojump

## Install zsh
- `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
- `chsh -s /bin/zsh`
- `echo $SHELL`

## Install autojump
- `brew install autojump`
- `vim ~./zshrc`

```
plugins=(git autojump) # old is plugins=(git)
# add a new line
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
```
