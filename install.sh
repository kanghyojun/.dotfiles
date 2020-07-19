git submodule update --init --recursive

pushd zshrc
    . ./install.sh
popd

pushd nvimrc
    . ./install.sh
popd

pushd tmux.conf
    . ./install.sh
popd
