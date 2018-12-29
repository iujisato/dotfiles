#!/usr/bin/env bash

# Install development packages in an Arch Linux based OS

set -euo pipefail
IFS=$'\n\t'

arch_packages=(
android-sdk
android-studio
autojump
bash
bash-completion
bind-tools
cmake
curl
dnsmasq
docker-compose
git
homesick
hosts-gen
htop
letsencrypt-cli
npm
postgresql-libs
pv
python
python-pip
python2
ripgrep
sqlite
the_silver_searcher
tig
tmux-git
tree
universal-ctags-git
unzip
wget
xclip
zip
zsh
zsh-autosuggestions
zsh-completions
zsh-syntax-highlighting
google-chrome
)

python_packages=(
aws-shell
pgcli
ptpython
py-mini-racer
vim-vint
)

pacaur_install () {
  package=$1
  echo "Installing $package"
  set +e
  pacaur -Qs "$package" > /dev/null
  if [[ $? -eq 0 ]]; then
    return
  fi
  set -e
  pacaur -S --noconfirm --noedit "$package"
}

for package in "${arch_packages[@]}"; do
  pacaur_install "$package"
done

for package in "${python_packages[@]}"; do
  pip install --user "$package"
done

for service in systemd-units/**/*.service; do
  unit_name=$(basename "$service")
  source=$(realpath "$service")
  target=/etc/systemd/system/$unit_name
  if [ -h "$target" ] && [ "$(readlink -f "$target")" = "$source" ]; then
    continue
  fi
  sudo ln -s "$source" "$target"
done
