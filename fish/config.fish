export LSCOLORS=cxfxcxdxbxegedabagacad

if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
end

function fish_user_key_bindings
    bind \cr peco_select_history
end
