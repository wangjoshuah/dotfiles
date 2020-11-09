#!/bin/bash

set -ev

# install brew from brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install all brew dependencies
for i in brew.leaves; do; brew install "$i"; done
