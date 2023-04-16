-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	update_focused_file = { enable = true }
})

local api = require('nvim-tree.api')
vim.keymap.set('n', '<C-b>', api.tree.toggle, {})
vim.keymap.set('n', '<leader>tf', api.tree.focus, {})
vim.keymap.set('n', '<leader>tx', api.tree.close, {})
vim.keymap.set('n', '<leader>to', function() 
	api.tree.open({ path = vim.fn.input("Path > ") });
end)
