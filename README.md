# dotfiles

```
cd dotfiles
brew bundle check --file Brewfile.minimal
brew bundle install --file Brewfile.minimal
ln -sf $PWD/.zprofile ~/.zprofile
ln -sf $PWD/.vimrc ~/.vimrc
ln -sf $PWD/Brewfile ~/Resources/Brewfile
brew bundle install
mkdir -p ~/.config
ln -s $PWD/starship/starship.toml ~/.config/starship.toml
ln -s $PWD/zsh_exe ../zsh_exe
```
