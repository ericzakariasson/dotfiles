# dotfiles

## setup

1. Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install packages

```sh
brew install \
git \
docker \
fnm \
dockutil \
gh \
python
```

3. Install casks

```sh
brew install --cask \
iterm2 \
discord \
visual-studio-code \
bitwarden \
spotify \
rectangle \
pika
```

4. Install `oh-my-zsh`

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh ohmyzsh/master/tools/install.sh)"
```

5. Install `zsh-syntax-highlighting`

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```

6. Install `zsh-autosuggestions`

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
```

6. Setup `fnm`

```sh
echo "eval \"$(fnm env --use-on-cd)\"" >> ~/.zshrc
```

7. Add aliases

```sh
echo 'zource="source ~/.zshrc"' >> ~/.zshrc
echo 'zshrc="code ~/.zshrc"' >> ~/.zshrc
```

8. Configure git

```sh
git config --global user.name ericzakariasson
git config --global user.email <email>
```
