ls_default="ls"

if ls --color=auto &> /dev/null; then
    ls_default="$ls_default --color=auto"
    alias ls="$ls_default"
fi

alias ls="$ls_default -Fh"
alias l="$ls_default -laFh"
alias ll="$ls_default -lFh"

unset ls_default

# Git
alias g="git"
alias gs="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gb="git branch"
alias gr="git rebase"
alias gri="git rebase -i"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gff="git merge --ff"

function gpr {
    local current_branch="$(git rev-parse --abbrev-ref HEAD)"
    local branch=${1:-master}
    git checkout "${branch}"
    git pull
    git checkout "${current_branch}"
    git rebase "${branch}"
}

# Ruby
alias be="bundle exec"
alias bi="bundle install --path=vendor/bundle"

# Redo completion for commands wrapping other commands
alias sudo="sudo "
alias env="env "
