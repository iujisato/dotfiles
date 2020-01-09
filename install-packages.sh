#!/usr/bin/env bash

# Install development packages in an MacOS

set -euo pipefail
IFS=$'\n\t'

brew_packages=(
  autojump # use command j to access directories
  tmux
  git
  wget
  gnupg2 # gpg2 for ssh keys
  zsh
  zsh-completions # zsh plugin for autocomplete
  google-chrome
  the_silver_searcher # used for Ag and vim-ag
  cmake
  macvim # vim with clipboard and python support
  reattach-to-user-namespace # to send tmux copy to clipboard
  yarn # js package manager
  htop # process manager cli
  python # python 3
  libpq # postgresql dev kit (without postgresql client)
  openvpn # vpn
)

cask_brew_packages=(
  iterm2 # terminal
  slack
  istat-menus # system monitoring
  spotify
  bitwarden # password manager
  reactotron # intercept react-native requests
  insomnia # rest/graphql client
  kap # screen recorder
  moom # window resizer
  discord #
)

python_packages=(
  # pgcli
  # ptpython
  # py-mini-racer
  # vim-vint
)

install () {
  package=$1
  echo "Installing $package"
  set +e
  brew search "$package" > /dev/null
  if [[ $? -eq 0 ]]; then
    return
  fi
  set -e
  brew install "$package"
}

cask_install () {
  package=$1
  echo "Installing $package"
  set +e
  brew search "$package" > /dev/null
  if [[ $? -eq 0 ]]; then
    return
  fi
  set -e
  brew cask install "$package"
}
for package in "${brew_cask_packages[@]}"; do
  cask_install "$package"
done

# for package in "${python_packages[@]}"; do
#   pip install --user "$package"
# done

# for service in systemd-units/**/*.service; do
#   unit_name=$(basename "$service")
#   source=$(realpath "$service")
#   target=/etc/systemd/system/$unit_name
#   if [ -h "$target" ] && [ "$(readlink -f "$target")" = "$source" ]; then
#     continue
#   fi
#   sudo ln -s "$source" "$target"
# done
