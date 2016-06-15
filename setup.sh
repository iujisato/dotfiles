#!/bin/bash

set -xeuo pipefail
IFS=$'\n\t'

ensure_link() {
  if [ -e "$2" ]; then
    if [ "$(readlink $2)" == "$1" ]; then
      return
    fi

    echo "Readlink is different"
    rm -r "$2"
    ln -s "$1" "$2"

    return
  fi

  ln -s "$1" "$2"
}

$(loginctl show-user 1000 | grep Linger=yes) || loginctl enable-linger bruno

shell=$(awk -F: '$1 == "bruno"{ print $7  }' < /etc/passwd)
zsh=/home/bruno/.nix-profile/bin/zsh
[[ -f "$zsh" ]] && grep $zsh /etc/shells || echo "$zsh" >> /etc/shells

[[ "$shell" != "$zsh" ]] || usermod -s "$zsh" bruno

ensure_link '/home/bruno/.nix-profile/share/fonts' '/home/bruno/.fonts'
ensure_link '/home/bruno/.nix-profile/bin' '/home/bruno/bin'
ensure_link '/home/bruno/.nix-profile/share/applications' '/home/bruno/.local/share/applications'
