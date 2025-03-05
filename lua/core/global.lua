-- Keymaps
require('core.keymaps')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true

-- Neovide Configuration
if vim.g.neovide then
    require('config.neovide')
end
