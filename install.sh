git submodule update --init --recursive

for dir in "zshrc" "nvimrc" "tmux.conf" "gitconfig"; do
    pushd "$dir"
        . ./install.sh
    popd
done
