#
#

alias dls="docker ps -a"
alias hello='docker run hello-world'
alias docker_nginx="make app-nginx"

APP=symapp

NGINX=$APP-nginx-nginx

alias app-nginx="docker exec -it $NGINX bash"

alias gip="git push origin master"
alias gs="git status"