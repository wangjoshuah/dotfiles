#!/bin/bash

set -ev

# install brew from brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install all brew oependencies
brew bundle install

# Add asdf to shell
echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.bash_profile

# add asdf autocomplete to shell
echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.bash_profile

# install asdf plugins
## add node gpg key from https://github.com/asdf-vm/asdf-nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf plugin add nodejs
asdf plugin add poetry
asdf plugin add python
asdf plugin add yarn

# link fish config
ln -s .config/ ~/.config

# install gsutil
curl https://sdk.cloud.google.com | bash

