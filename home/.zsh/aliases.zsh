alias ack='ack-grep'
alias cls='printf "\033c"'
alias ccat='pygmentize -g -O style=monokai -f console256 -g'
alias vi='vim'
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
alias fig='echo "Use docker-compose"'
alias dup='docker-compose up -d'
alias drun='docker-compose run --rm'
alias dstop='docker-compose stop'
alias druns='docker-compose run --rm --service-ports'
alias dkill='docker-compose kill'
alias drm='docker-compose rm'
alias dps='docker-compose ps'
alias dlogs='docker-compose logs'
alias drunb='docker-compose run --rm web bash'
alias drunsb='docker-compose run --rm --service-ports web bash'
alias start_dns='source ~/start_dns.sh'
alias docker-clean='docker ps -qa --filter status=exited | xargs -r docker rm'
alias docker-clean-images='docker images -q --filter="dangling=true" | xargs -r docker rmi'
alias docker-clean-volumes='docker volume ls -qf dangling=true | xargs -r docker volume rm'

# ssh
alias s='ssh'

# Git
alias gcln='git clone'
alias gdc='git diff --cached'

# Vagrant
alias v='vagrant'
alias vdestroy='vagrant destroy'
alias vhalt='vagrant halt'
alias vprovision='vagrant provision'
alias vreload='vagrant reload'
alias vssh='vagrant ssh'
alias vst='vagrant status'
alias vup='vagrant up'
