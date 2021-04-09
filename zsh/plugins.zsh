# 見た目のカスタマイズ
zinit ice depth=1; zinit light romkatv/powerlevel10k
# コマンドラインのハイライト
zinit light zdharma/fast-syntax-highlighting

# bat command
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
# alias
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi
