# homebrew-trzsz

[trzsz](https://trzsz.github.io/) is a simple file transfer tools, similar to lrzsz ( rz / sz ), and compatible with tmux.


To install [trzsz](https://github.com/trzsz/trzsz) using Homebrew:
```sh
brew tap trzsz/trzsz
brew install trzsz
test -f /usr/local/bin/trzsz-iterm2 || sudo ln -s $(which trzsz-iterm2) /usr/local/bin/trzsz-iterm2
```

You can confirm that the install worked using:
```sh
$ trzsz-iterm2 -v
trzsz-iterm2 (trzsz) 0.3.1
```
