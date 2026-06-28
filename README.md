# dotfiles

Personal terminal configuration files.

## Install tmux configuration

The tmux configuration requires tmux 3.2 or newer. Clipboard integration uses
`wl-copy` under Wayland, `xclip` under X11 when available, and `xsel` as a
second X11 fallback.

Clone the repository:

```sh
git clone https://github.com/danhill600/dotfiles.git ~/.dotfiles
```

Review any existing tmux configuration before replacing it, then link only
the tmux file:

```sh
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
```

The `.screenrc` and `.vimrc` are older configurations and are not installed
automatically. Review each file before using it.
