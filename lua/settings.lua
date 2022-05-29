HOME = os.getenv("HOME")

vim.g.mapleader = ','

vim.o.encoding = "utf-8"
vim.o.backspace = "indent,eol,start" -- backspace on every char in insert mode
vim.o.history = 1000
vim.o.startofline = true

-- Mapping waiting time
vim.o.timeout = false
vim.o.ttimeout = true
vim.o.ttimeoutlen = 100

-- Display
vim.o.showmatch  = true -- show matching brackets
vim.o.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.o.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.o.laststatus = 2 -- always show status line

vim.o.list = false -- do not display white characters
vim.o.foldenable = false
vim.o.foldlevel = 4 -- limit folding to 4 levels
vim.o.foldmethod = 'syntax' -- use language syntax to generate folds
vim.o.wrap = false --do not wrap lines even if very long
vim.o.eol = false -- show if there's no eol char
vim.o.showbreak= '↪' -- character to show when line is broken

-- Sidebar
vim.o.number = true -- line number on the left
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = 'number' -- keep 1 column for coc.vim  check
vim.o.modelines = 0
vim.o.showcmd = true -- display command in bottom bar

-- Search
vim.o.incsearch = true -- starts searching as soon as typing, without enter needed
vim.o.ignorecase = true -- ignore letter case when searching
vim.o.smartcase = true -- case insentive unless capitals used in search
vim.o.hlsearch = true -- highlight as search is entered

vim.o.matchtime = 2 -- delay before showing matching paren
vim.o.mps = vim.o.mps .. ",<:>"

-- White characters
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2 -- 1 tab = 2 spaces
vim.o.shiftwidth = 2 -- indentation rule
vim.o.expandtab = true -- expand tab to spaces

-- Main configuration
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.title = true
vim.o.hidden = true

vim.o.wildmenu = true
vim.o.ruler = true
vim.o.wrap = true
vim.o.breakindent = true
vim.o.textwidth = 0

-- Plugin settings
---- NerdTree
vim.g.NERDTreeShowHidden = 1

---- Airline
vim.g.airline_powerline_fonts = 1
vim.g.airline_section_z = ' %{strftime("%-I:%M %p")}'
vim.g.airline_section_warning = ''

---- Supertab
-- vim.g.SuperTabDefaultCompletionType = "<C-n>"

---- IndentLine
vim.g.indentLine_char = '▏'
vim.g.indentLine_defaultGroup = 'NonText'
vim.g.vim_json_syntax_conceal = 0
vim.g.vim_markdown_conceal = 0
vim.g.vim_markdown_conceal_code_blocks = 0

---- Signify
vim.g.signify_sign_add='+'
vim.g.signify_sign_delete='-'
vim.g.signify_sign_change='|'

-- Only show cursorline in the current window and in normal mode.
vim.cmd([[
  augroup cline
    au!
    au WinLeave * set nocursorline
    au WinEnter * set cursorline
    au InsertEnter * set nocursorline
    au InsertLeave * set cursorline
  augroup END
]])

-- Start neovim with NERDTree open
-- If a file is specified cursor starts in that file
vim.cmd([[
  autocmd VimEnter * NERDTree
  \ | if argc()
  \ | wincmd p
  \ | endif
]])

-- Set colorscheme
vim.cmd('colorscheme cinnabar')
