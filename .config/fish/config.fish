set -x EDITOR vim
set -x PATH $HOME/bin $HOME/.cargo/bin $HOME/.rbenv/bin $PATH
status --is-interactive; and rbenv init - fish | source
set -x GOPATH $HOME/go
set -x GOBIN $HOME/bin
set fish_greeting

# Modern replacements
alias ack rg
alias cat bat
alias du dust
alias find fd
alias grep rg
alias ls "exa --long --header --git"
alias ps procs

function fish_prompt -d "Write out the prompt"
    printf '%s%s%s > ' \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

starship init fish | source
