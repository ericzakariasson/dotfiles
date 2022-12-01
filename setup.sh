# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null

# install
brew install \
git \
docker \
fnm \
dockutil \
gh \


# install casks 
brew install --cask \
iterm2 \
discord \
visual-studio-code \
bitwarden \
spotify \
rectangle \
pika \

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# setup zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# setup fnm
echo "eval \"$(fnm env --use-on-cd)\"" >> ~/.zshrc

# alias
echo "zource='source ~/.zshrc'" >> ~/.zshrc
echo "zshrc='code ~/.zshrc'" >> ~/.zshrc

# clean dock
dockutil --remove all