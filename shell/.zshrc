
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

NODE_PATH="$HOME/.local/share/node/bin"
NVIM_PATH="$HOME/nvim/bin"
CARGO_PATH="$HOME/.cargo/bin"
export PATH="$PATH:$CARGO_PATH:$NVIM_PATH:$NODE_PATH:$HOME/.local/bin"

################## Neovim ##################
alias vim='nvim'
alias v='nvim . '
alias lg='lazygit'
############################################

################## Kubernetes ##############
# alias k8getallpods='kubectl get pods -A'
# alias k8getallservices='kubectl get services -A'
# alias k8getallctx='kubectl config get-contexts'
# alias k8getcurctx='kubectl config current-context'
# alias k8switchctx='kubectl config use-context $1'
# alias k8dev='kubectl config use-context k8s-dev-hmg'
# alias k8prd='kubectl config use-context k8s-b2c-prd'
# alias k8portf='kubectl port-forward $@'
# alias k8pfhasuradev='k8dev && kubectl port-forward services/brmalls-api-purchase -n dev-brmalls-api-purchase $RC_HASURA_PURCHASE_PORT:80'
# alias k8pfhasuraprd='k8prd && kubectl port-forward services/brmalls-api-purchase -n brmalls-api-purchase $RC_HASURA_PURCHASE_PORT:80'
# alias k8pfeverything='f(){ ~/scripts/port_forward_everything.sh $1 };f'
# alias k8killpf='~/scripts/kill_port_forward.sh'
# alias k8pfcfg='vim ~/scripts/'
############################################


################## Python ##################
alias python='python3'
alias pip='pip3'
alias .v='source .venv/bin/activate'
alias venv='python -m venv venv'
alias .venv='python -m venv venv'
alias deac='deactivate'
############################################


################## General ##################
alias open="xdg-open"
#############################################

