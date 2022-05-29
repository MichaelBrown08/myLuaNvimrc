-- Functions to simplify adding new mappings
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, 
    { noremap = true, silent = true }
  )
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Mappings
---- Navigation and Navigation
nmap('<leader>q', ':NERDTreeToggle<CR>')
nmap('<leader>d', ':Files<CR>')
nmap('<leader>f', ':BLines<cR>')

---- Buffers
nmap('<Tab>', ':bnext<CR>')
nmap('<S-Tab>', ':bprevious<CR>')

---- Git
nmap('<leader>gg', ':LazyGit<CR>')

---- Remove highlighting
nmap('<leader><leader>', ':noh<CR>')

---- Utility functions
nmap('<leader>t', ':call TrimWhitespace()<CR>')
nmap('<leader>rp', ':RainbowParentheses!!<CR>')

---- CoC
nmap('gd', ":call CocAction('jumpDefinition', 'vsplit')<CR>")
nmap('gs', ":call CocAction('jumpDefinition', 'split')<CR>")
nmap('go', ':<C-u>CocList outline<CR>')
nmap('go', ':<C-u>CocList --tab outline<CR>')
nmap('go', ':<C-u>CocDiagnostics<CR>')
nmap('<leader>ep', '<Plug>(coc-diagnostic-prev)')
nmap('<leader>ep', '<Plug>(coc-diagnostic-next)')

vim.cmd([[
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
]])

-- Language-specific content
---- Rust
nmap('<leader>rr', ':RustRun')
nmap('<leader>rf', ':RustFmt')
