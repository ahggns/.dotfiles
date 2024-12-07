#!/bin/bash

# Determine the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DOTFILES="$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel 2>/dev/null)"
if [ -z "$DOTFILES" ]; then
    echo "Error: Unable to determine DOTFILES directory. Is it in a git repository?"
    exit 1
fi
export DOTFILES

# Set CONFIG if not already set
if [ -z "$CONFIG" ]; then
    CONFIG="$HOME/.config"
    export CONFIG
fi

# Init/Update submodules
echo "Updating submodules..."
git -C "$DOTFILES" submodule update --init --recursive

echo "DOTFILES is set to: $DOTFILES"
echo "CONFIG is set to: $CONFIG"

$SCRIPT_DIR/install-brew.sh
$SCRIPT_DIR/install-git.sh
$SCRIPT_DIR/install-nvim.sh
$SCRIPT_DIR/install-zsh.sh

echo "setup complete!"
echo "additional configuration may be required:"
echo " - install fonts for zsh prompt: https://github.com/romkatv/powerlevel10k/blob/master/font.md"
echo " - symlink java (e.g. sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk)"
