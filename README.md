# dotfiles

## install fish
```
brew install fish
# change default shell
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

## oh-my-fish install
```
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

## starship

```
brew install starship
```

## vim-plug install
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/autoload
mkdir ~/.vim/plugged

vim
(inside vim)
:PlugInstall

```

## vim color theme
```
git clone https://github.com/jonathanfilip/vim-lucius
cp -r vim-lucius/colors .vim/
```
