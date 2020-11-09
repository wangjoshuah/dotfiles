source ~/google-cloud-sdk/path.fish.inc

source /usr/local/opt/asdf/asdf.fish
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths

# https://github.com/nvbn/thefuck#manual-installation
thefuck --alias | source

# https://github.com/starship/starship
starship init fish | source
