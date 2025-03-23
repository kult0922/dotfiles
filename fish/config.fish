export LSCOLORS=cxfxcxdxbxegedabagacad

if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
end

function fish_user_key_bindings
    bind \cr peco_select_history
end

# for go
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)
set -x PATH $GOPATH/bin $PATH

# for starship prompt
starship init fish | source
