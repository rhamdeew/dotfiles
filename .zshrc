export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# Run rbenv
#eval "$(rbenv init -)"
# Run NVM
# source /usr/local/opt/nvm/nvm.sh && nvm use --delete-prefix v10.16.3

#Aliases
# Use NVM
alias envm='source $(brew --prefix nvm)/nvm.sh && nvm use --delete-prefix v10.16.3'
# Use Pyenv
alias pnv='eval "$(pyenv init -)"'
alias po='poetry'
# Use Rbenv
alias rbnv='eval "$(rbenv init -)"'
# Run NVim
alias nv='envm && rbnv && nvim'

#TODO
alias td='cat ~/.private_dec_g/Private/notes/TODO.md'
alias tde='vim ~/.private_dec_g/Private/notes/TODO.md'

#CD
alias cdd='cd ~/Downloads'
alias cdw='cd ~/Work'
alias cdru='cd ~/Work/ruby/projects'
alias cdph='cd ~/Work/php/projects'
alias cdpy='cd ~/Work/python/projects'

#Key management
alias efs='gocryptfs ~/Dropbox/SuperPrivateDir/ ~/Super/'
alias skey='grep -rlR "PRIVATE" ~/.ssh | grep -e 'ssh\/id_rsa' | xargs ssh-add'

alias rgl='rg -l'

alias gs='git status --short'
alias ga='git add'
alias gb='git branch'
alias gbf='fzf-git-branch'
alias gc='git checkout'
alias gcf='fzf-git-checkout'
alias gme='git merge'
alias gmef='fzf-git-merge'
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

alias dps='docker ps'

alias t='~/.bin/trans :ru'

alias dcru='docker-compose stop && docker-compose run --rm --service-ports web /bin/bash && docker-compose stop'
alias dcup='docker-compose stop && docker-compose up'
alias dcst='docker-compose stop'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fpath+=${ZDOTDIR:-~}/.zsh_functions
autoload -U fzf-git-branch
autoload -U fzf-git-checkout
autoload -U fzf-git-merge

