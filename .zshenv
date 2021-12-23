typeset -U PATH path
typeset -gU GOPATH

GOPATH=(
  "$HOME/go"
)

path=(
  "$HOME/.local/bin"
  "$GOPATH/bin"
  "$path[@]")

export PATH
export GOPATH
