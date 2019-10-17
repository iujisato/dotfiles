#!/usr/bin/env bash

# Install development packages in an MacOS

set -euo pipefail
IFS=$'\n\t'

brew_packages=(
  autojump
  tmux
  git
  wget
  gnupg2
  zsh
  zsh-completions
  google-chrome
  the_silver_searcher
  cmake
  macvim
  reattach-to-user-namespace
  slack
  yarn
  htop
)

cask_brew_packages=(
  iterm2
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
