# 💤 My Neovim Config (Mac)

This is my personal Neovim configuration, based on the [LazyVim](https://github.com/LazyVim/LazyVim) [starter](https://github.com/LazyVim/starter) template.

## ⚡️ Requirements

- Neovim >= **0.11.2** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)

## 🚀 Getting Started

- Make a backup of your current Neovim files:

  ```sh
  mv ~/.config/nvim ~/.config/nvim.bak
  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  ```

- Clone the repo

  ```sh
  git clone https://github.com/HanmiAsuka/Neovim-config.git ~/.config/nvim
  ```

- Remove the `.git` folder, so you can add it to your own repo later

  ```sh
  rm -rf ~/.config/nvim/.git
  ```

- (Optional) Install plugin dependencies, you can use `:checkhealth` to check the plugin dependencies of LazyVim starter.

  ```sh
  brew install node lazygit fzf tree-sitter tree-sitter-cli luarocks ripgrep fd python
  ```

  Refresh `zsh`

  ```sh
  source ~/.zshrc
  ```

  Install `pynvim`
   
  ```sh
  python3 -m venv ~/.config/nvim/py3env
  ~/.config/nvim/py3env/bin/pip install pynvim
  ```

- Start Neovim!

  ```sh
  nvim
  ```


ps: If there is empty space at the bottom of the terminal in Neovim, try these fixes:

- Change your font size. (This happens because the terminal pixel height is not a multiple of the font size.)

- Change your terminal background color. (Use `:hi StatusLine` to find the color, then set it in `Settings > Profiles > Colors > Background`.)

