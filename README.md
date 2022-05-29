# myLuaNvimrc-
Neovim config in lua

Before installing Neovim + CoC plugins you'll want to install the latest versions of node (from PPA) + rust:

Node
* `curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh`
* `sudo bash /tmp/nodesource_setup.sh`
* `sudo apt install nodejs`
* `node --version`

Rust (WSL specific see: https://www.rust-lang.org/tools/install).
Default installation is fine. CoC will install dependencies for rust-analyzer.
* (WSL) `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
* (Ubuntu) `curl https://sh.rustup.rs -sSf | sh`

Add any other language servers at this point, then move onto installing neovim.

Install latest neovim:
* `sudo add-apt-repository ppa:neovim-ppa/unstable`
* `sudo apt update`
* `sudo apt install neovim`
* Add `alias vim="nvim"` to .zshrc

Before customising neovim with this repo add some additional binaries plugins use:

Install latest lazygit:
* From https://github.com/jesseduffield/lazygit/releases
* Get the latest release version: `LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')`
* Get that binary: `curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"`
* Extract it: `sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit`

Install fzf:
* From https://github.com/junegunn/fzf#using-linux-package-managers=
* `sudo apt install fzf`
 
Install packer.nvim:
* From https://github.com/wbthomason/packer.nvim#quickstart=
* `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

Clone this repo and copy the contents where they're expected:
* `mkdir -p ~/.config/nvim/`
* `git clone https://github.com/MichaelBrown08/myLuaNvimrc`
* `mv myLuaNvimrc/* .config/nvim/`

In Neovim run:
* `:CocInstall coc-tsserver coc-json coc-rust-analyzer`
* When you first open a rust directory (create one with `cargo new <name>`) in nvim it'll ask you to download a binary
