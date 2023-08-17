# Launch-editor
export EDITOR="ws"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh


# Gaia
alias gbuild="gaia ciw"
alias dev="gaia dev test"
alias sst="gaia dev sst"
alias pre="gaia dev pre"
alias prod="gaia dev prod"
alias pub="gaia pub"
function mr(){
  gaia gmr
}

function p() {
  git add -A && git commit -m $1 && git push
}

function pr() {
  p $1 && gaia gmr
}

# Yarn
alias y="yarn"
alias lib="yarn lib"


# Proxy
alias fq="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890; echo 'done';"
alias unfq="unset http_proxy; unset http_proxy; unset all_proxy; echo 'done';"

# Vim
alias nv='nvim'

# Git
alias gs='git status'
#alias p='git push'
alias l='git pull'
alias gpf='git push --force'
alias gpl='git pull --rebase'
alias gplo='git pull origin'
alias gstash='git stash'
alias main='git checkout main && git pull'
alias test='git checkout test && git pull'
alias master='git checkout master && git pull'

alias gco='git checkout'
alias b='git checkout -b'

alias gb='git branch'
alias gbd='git branch -d'
alias gl='git log'

alias grb='git rebase'
alias grbom='git rebase origin/master'
alias grbc='git rebase --continue'
alias grh='git reset HEAD'
alias grh1='git reset HEAD~1'

alias ga='git add'
alias gA='git add -A'

alias c='git commit -m'
alias gc='git add -A && git commit -m'
alias gcf='git clean -f'
alias gcamend="git commit --amend"


alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# pnpm
export PNPM_HOME="/Users/edison/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
