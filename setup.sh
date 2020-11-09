#!/bin/bash

set -ev

# install brew from brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install all brew oependencies
brew bundle

