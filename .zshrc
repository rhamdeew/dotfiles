export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8


fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Bind Fn+<-/Fn+-> to move begin/end of line
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line


# ZSH options
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data
setopt prompt_subst


#Aliases
export NOTES_DIR="~/.notes/"
# Personal work-related settings
[ -f ~/.zshrc_work ] && source ~/.zshrc_work
# Import shared aliases
[ -f ~/.shared_aliases ] && source ~/.shared_aliases


# Python

# Poetry
alias po='poetry'


# Enable fzf auto-completions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Add fuzzy-search to git
fpath+=${ZDOTDIR:-~}/.zsh_functions
autoload -U fzf-git-branch
autoload -U fzf-git-checkout
autoload -U fzf-git-merge
autoload -U git-branch-name


alias gbf='fzf-git-branch'
alias gcf='fzf-git-checkout'
alias gmef='fzf-git-merge'

alias m='make'
alias v='vim'
alias nv='nvim'

# Init zoxide
eval "$(zoxide init zsh)"

source ~/.config/broot/launcher/bash/br
alias brw='br -w'


# Display current git branch name
# prompt='%F{cyan}%n%f:%1~$(git-branch-name)%F{cyan}>%f '

source /Users/rail/.config/broot/launcher/bash/br
eval "$(rtx activate zsh)"
