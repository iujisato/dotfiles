unsetopt nomatch

export UPDATE_ZSH_DAYS=7
ZSH_THEME="3den"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# Prevent slow paste on macOS
DISABLE_MAGIC_FUNCTIONS="true"

ZSH_CUSTOM=~/.zsh

plugins=(
  autojump
  colored-man-pages
  command-not-found
  docker
  docker-compose
  git
)
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$PATH:/home/iujisato/.npm/bin
export PATH=$PATH:/home/iujisato/.local/bin

# Base16 Shell
BASE16_SHELL="$HOME/.homesick/repos/dotfiles/home/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Disable software control flow
stty -ixon

export EDITOR=vim
export PATH=$PATH:/home/iujisato/bin
export PATH=$PATH:/home/iujisato/scripts
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/iujisato/.gem/ruby/2.r.0/bin
export PATH=$PATH:/usr/bin/core_perl

if [[ -z "$TMUX" ]]
then
  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
fi
export FZF_DEFAULT_COMMAND='ag -l -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVIM_TUI_ENABLE_TRUE_COLOR=1

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add git worktree function
gitWorktreeCheckout() {
  local path="$branch" | sed 's/[^/]*\(/.*\)/\1/'
  echo $path
  # git worktree add --detach path "$branch"
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Android path variables
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"

# Export pip on home brew installs
export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"
