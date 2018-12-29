alias ack='ack-grep'
alias cls='printf "\033c"'
alias ccat='pygmentize -g -O style=monokai -f console256 -g'
alias server='python -m SimpleHTTPServer'
alias h='homesick'
alias find-trailing='find . -type f -exec egrep -l " +$" {} \;'
alias file-sizes='find -maxdepth 1 -exec du -hs {} \; | sort -hr'

alias sudo='nocorrect sudo '

# Apt
alias apt-install='sudo apt-get install'
alias apt-update='sudo apt-get update'
alias apt-ppa='sudo add-apt-repository'
alias apt-search='apt-cache search'
alias apt-show='apt-cache show'
alias apt-remove='sudo apt-get remove'
alias apt-purge='sudo apt-get purge'
alias apt-upgrade='sudo apt-get upgrade'
alias apt-dist-upgrade='sudo apt-get dist-upgrade'
alias apt-clear-kernels='dpkg -l linux-* | awk "/^ii/{ print \$2}" | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | grep -E "(image|headers)" | xargs sudo apt-get -y purge'

# Docker
alias d='docker'
alias dc='docker-compose'
alias fig='echo "UseValloric/YouCompleteMe/wiki/Building-Vim-from-source docker-compose"'
alias dup='docker-compose up -d'
alias dcrun='docker-compose run --rm'
alias dcstop='docker-compose stop'
alias dcruns='docker-compose run --rm --service-ports'
alias dckill='docker-compose kill'
alias dcrm='docker-compose rm'
alias dcps='docker-compose ps'
alias dclogs='docker-compose logs'
alias dcrunb='docker-compose run --rm web bash'
alias dcrunsb='docker-compose run --rm --service-ports web bash'
alias start_dns='source ~/start_dns.sh'
alias docker-clean='docker ps -qa --filter status=exited | xargs -r docker rm'
alias docker-clean-images='docker images -q --filter="dangling=true" | xargs -r docker rmi'
alias docker-clean-volumes='docker volume ls -qf dangling=true | xargs -r docker volume rm'

# ssh
alias s='ssh'

# Git
alias gcln='git clone'
alias gdc='git diff --cached'
alias gpf='git push --force-with-lease'
alias gmnff='git merge --no-ff'

# Git worktree
alias gwt='git worktree'
alias gwta='git worktree add'
alias gwtad='git worktree add --detach'
alias gwtl='git worktree list'
alias gwtlock='git worktree lock'
alias gwtunlock='git worktree unlock'
alias gwtpr='git worktree prune -v'


# Vizir Deployer
alias deployer='~/Projects/automated-deploy/dist/vizir-deployer.sh'
