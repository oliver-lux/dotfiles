if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

dotfiles="$HOME/.dotfiles"

source $dotfiles/bin/antigen.zsh
antigen init $dotfiles/zsh/.antigenrc

source $dotfiles/zsh/aliases/docker.sh

# Set aliases
alias ls="ls --color=tty --group-directories-first"
alias l="ls -lh"

# Append additional pathes
path+=("/mnt/c/Users/Oliver/Local Settings/Programs/Microsoft VS Code/bin")
path+=("$HOME/.composer/vendor/bin")

# export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{.git/*,node_modules/*,vendor/*}"'

alias v='nvim $(fzf)'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
