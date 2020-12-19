export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#direnv(仮想環境関連：direnvはディレクトリごとに環境変数を設定する)
type direnv > /dev/null 2>&1 && eval "$(direnv hook zsh)"