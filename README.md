This repository contains .dotfiles for the following tools:

- Tmux
- Xpdf
- Tidy

# Setup on a new machine

```shell
mkdir -p ~/.dotfiles/
cd ~/.dotfiles/
git clone git@gitlab.com:zm4k/dotfiles.git ~/.dotfiles
ln -sf ~/git/dotfiles/.tmux ~/.tmux
ln -sf ~/git/dotfiles/.tmux.conf ~/.tmux.conf
tmux
<Prefix> + I
ln -sf ~/git/dotfiles/.xpdfrc ~/.xpdfrc
ln -sf ~/git/dotfiles/.tidy ~/.tidy
```
