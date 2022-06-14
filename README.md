# dotfiles

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
