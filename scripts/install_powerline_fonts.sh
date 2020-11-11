#!/bin/bash

# clone
git clone https://github.com/powerline/fonts.git --depth=1 ~/repos/powerline/fonts
# install
cd ~/repos/powerline/fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
