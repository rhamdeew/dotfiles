export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8


# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship


# Disable unused Spacehsip options
SPACESHIP_HG_SHOW=false
SPACESHIP_HG_BRANCH_SHOW=false
SPACESHIP_HG_STATUS_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false


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


#Aliases

# Use NVM
alias envm='source $(brew --prefix nvm)/nvm.sh && nvm use --delete-prefix v10.16.3'
# Use Pyenv
alias pnv='eval "$(pyenv init -)"'
alias po='poetry'
# Use Rbenv
alias rbnv='eval "$(rbenv init -)"'
# Run NVim
alias nv='envm && pnv && rbnv && nvim'


#TODO
alias td='cat ~/.private_dec_g/Private/notes/TODO.md'
alias tde='(cd ~/.private_dec_g/Private/notes/ && vim TODO.md && git add TODO.md && git commit -m "update TODO")'


#NOTES
alias notes='(cd ~/.private_dec_g/Private/notes/ && vim && git add . && git commit -m "update notes")'


#CD
alias cdd='cd ~/Downloads'
alias cdw='cd ~/Work'
alias cdru='cd ~/Work/ruby/projects'
alias cdph='cd ~/Work/php/projects'
alias cdpy='cd ~/Work/python/projects'


#Key management
alias efs='gocryptfs ~/Dropbox/Private_g/ ~/.private_dec_g/'
alias skey='grep -rlR "PRIVATE" ~/.ssh | grep -e 'ssh\/id_rsa' | xargs ssh-add'


# Ripgrep aliases
alias rgl='rg -l'


# Git aliases
alias gs='git status --short'
alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gme='git merge'
alias gplo='git pull origin $(git branch --show-current)'
alias gpso='git push origin $(git branch --show-current)'
alias gl='git log'
alias glp='git log -p'
alias gln='git log --name-only'
alias gcv='git commit -v'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gd='git diff'
alias gt='git stash'


# Docker aliases
alias dps='docker ps'


# Individual work-related settings
[ -f ~/.zshrc_work ] && source ~/.zshrc_work


# Enable fzf auto-completions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Add fuzzy-search to git
fpath+=${ZDOTDIR:-~}/.zsh_functions
autoload -U fzf-git-branch
autoload -U fzf-git-checkout
autoload -U fzf-git-merge

alias gbf='fzf-git-branch'
alias gcf='fzf-git-checkout'
alias gmef='fzf-git-merge'
