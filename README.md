# Dotfiles

The dotfiles that I prefer using for vim and tmux when doing work.
They add some useful highlighting and shortcuts for Rails projects.

# Prerequisites

Powerline-shell requires curl and pip to be installed (along with a couple of python libraries, but the setup.py script complains about the missing ones so they are not documented).
Install [powerline-shell](https://github.com/b-ryan/powerline-shell).
Install script taken from URL above:
```
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
```

Install [patched Powerline fonts fonts](https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf).
Install script taken from URL above:
```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

Rerun PlugInstall if something fails once running vim.
