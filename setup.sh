# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install
brew install \
git \
docker \
fnm \
dockutil \
gh \
python


# install casks 
brew install --cask \
iterm2 \
discord \
visual-studio-code \
bitwarden \
spotify \
rectangle \
pika

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo "\n\n" >> ~/.zshrc

# setup zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "\n\n" >> ~/.zshrc

# setup fnm
echo "eval \"$(fnm env --use-on-cd)\"" >> ~/.zshrc
echo "\n\n" >> ~/.zshrc

# alias
echo "zource='source ~/.zshrc'" >> ~/.zshrc
echo "zshrc='code ~/.zshrc'" >> ~/.zshrc

# Homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc

# Homebrew: Python
echo 'export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"' >> ~/.zshrc

# clean dock
dockutil --remove all