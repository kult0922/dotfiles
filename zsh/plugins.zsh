# 見た目のカスタマイズ
zinit ice depth=1; zinit light romkatv/powerlevel10k
# コマンドラインのハイライト
zinit light zdharma-continuum/fast-syntax-highlighting

zinit light zsh-users/zsh-autosuggestions
zinit load zdharma-continuum/history-search-multi-word

# bat command
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
# alias
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi
