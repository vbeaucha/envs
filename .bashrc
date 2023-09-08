#Kubernetes autocompletion
source <(kubectl completion bash)
source /etc/profile.d/bash_completion.sh
alias k=kubectl
complete -F __start_kubectl k
source <(minikube completion bash)

#Node version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#GIT autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#Helm autocomplettion
if [ -f ~/.helm-completion.bash ]; then
  . ~/.helm-completion.bash
fi

#GIT Prompt
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
source ~/.kube-ps1.sh
kubeoff
export PS1='\[\n\[\e[1;34m\]\w\e[1;32m\]$(__git_ps1 " (%s)")\e[1;33m\]$(kube_ps1)\[\e[m\]\\$ '

#Alias
alias la="ls -al"
alias k=kubectl
alias spo="systemctl --user restart spotifyd.service"
alias gcm="git commit -m"
alias gpf="git push --force"
alias gp="git push"
alias gc="git checkout"
alias gcan="git commit --amend --no-edit"

#Golang
export PATH=$PATH:/usr/local/go/bin

