This repository contains .dotfiles for the following tools:

- Tmux
- Xpdf
- Tidy

# Setup on a new machine

```shell
mkdir -p ~/.dotfiles/
cd ~/.dotfiles/
mpw -u 'zm4k' -t x -p a github.com
git clone https://github.com:zm4k/.dotfiles.git ~/git/dotfiles
ln -sf ~/git/dotfiles/.tidy ~/.dotfiles
ln -sf ~/git/dotfiles/.tmux ~/.tmux
ln -sf ~/git/dotfiles/.tmux.conf ~/.tmux.conf
tmux
<Prefix> + I
ln -sf ~/git/dotfiles/.xpdfrc ~/.xpdfrc
ln -sf ~/git/dotfiles/.tidy ~/.tidy
```
