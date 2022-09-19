if ! command -v brew &> /dev/null
then
    echo "Install homebrew …"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if [ "$(brew tap | grep "^homebrew/cask-versions$")" = '' ]; then
    echo "Tap homebrew/cask-versons homebrew …"
    brew tap homebrew/cask-versions
fi

echo "Get installed packages …"
brew_installed="$(brew list)"
cask_installed="$(brew list --cask)"

brew_packages=("git" "zsh" "neovim" "ripgrep" "fzf" "pyenv" "nodenv" "helm" "gnupg" "exa" "kubectl" "pipx" "awscli", "postgresql", "rabbitmq", "z", "httpie", "direnv", "rust", "tfenv", "redis")
cask_packages=("keybase" "hammerspoon" "1password" "docker" "google-chrome", "spotify", "slack", "intellij-idea", "notion", "krisp", "zoom", "itsycal", "discord")

echo "Install homebrew packages …"
for pack in "${brew_packages[@]}"; do
    if [ "$(echo "$brew_installed" | grep "^$pack$")" = '' ]; then
        brew install "$pack"
    fi
done

echo "Install cask packages …"
for pack in "${cask_packages[@]}"; do
    if [ "$(echo "$cask_installed" | grep "^$pack$")" = '' ]; then
        brew install --cask "$pack"
    fi
done
