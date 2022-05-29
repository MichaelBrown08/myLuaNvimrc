return require("packer").startup(function()
  -- Aesthetics
  use "wbthomason/packer.nvim"
  use "dracula/vim"
  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"
  use "bryanmylee/vim-colorscheme-icons"
  use "junegunn/rainbow_parentheses.vim"
  use "vimoxide/vim-cinnabar"
  
  -- Functionalities
  ---- Defaults
  use "tpope/vim-sensible"
  use "antoinemadec/FixCursorHold.nvim"
  use "Yggdroot/indentLine"

  ---- Core
  use "preservim/nerdtree"
  use "ryanoasis/vim-devicons"
  use { 
    "neoclide/coc.nvim",
    branch = "release" 
  }
  use { 
    "prettier/vim-prettier",
    run = "npm install",
    ft = { "javascript", "typescript", "css", "less", "scss", "html" }
  }
  use "sheerun/vim-polyglot"
  use "wellle/context.vim"

  -- Git
  use "tpope/vim-fugitive"
  use "Xuyuanp/nerdtree-git-plugin"
  use "kdheepak/lazygit.nvim"
  use "mhinz/vim-signify"

  -- Editing
  use "tpope/vim-surround"
  use "tpope/vim-commentary"

  -- Movement
  use "justinmk/vim-sneak"
  use "matze/vim-move"
  use "junegunn/fzf"
  use "junegunn/fzf.vim"
end)
