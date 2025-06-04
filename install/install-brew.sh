#!/bin/bash

# Install Homebrew, if not already installed
if ! command -v brew &> /dev/null; then
    if [ "$(uname)" = "Darwin" ]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
    if [ "$(uname)" = "Linux" ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    fi
else
    echo "Homebrew already installed at $(which brew)"
fi

brew install $(cat "$DOTFILES/brew/leaves") --quiet
