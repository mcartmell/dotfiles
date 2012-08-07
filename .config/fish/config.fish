set -x EDITOR vim
set -x PATH $HOME/bin $HOME/.rbenv/bin $PATH
status --is-interactive; and rbenv init - fish | source
set -x GOPATH $HOME/go
set -x GOBIN $HOME/bin
set fish_greeting
alias p peco
