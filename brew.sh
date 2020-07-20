for item in "pyenv" "nodenv" "tmux" "git" "zsh" "fzf" "helm" "docker" "gpg"; do
  brew install "$item";
done

for item in "slack" "1password" "keybase" "hammerspoon"; do
  brew cask install "$item";
done
