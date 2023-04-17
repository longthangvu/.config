# Zsh
- Install [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- Install [Oh-My-Zsh](https://ohmyz.sh/)
- Install Oh-My-Zsh plugins

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
- Add the plugins in the ~/.zshrc file's plugin list.

```
plugins=(
  ...
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```
- Reflect every change: `source ~/.zshrc`
# Starship
- Install [Nerd Font](https://www.nerdfonts.com/) 
- Install [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- Add `zsh/starship.zsh` & `starship.toml` to appropriate places
