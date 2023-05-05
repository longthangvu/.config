local ls = require("luasnip")
vim.api.nvim_set_keymap('i', '<Tab>', "v:lua.require'luasnip'.expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'", { silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', "<cmd>lua require'luasnip'.jump(-1)<CR>", { silent = true })
vim.api.nvim_set_keymap('s', '<Tab>', "<cmd>lua require('luasnip').jump(1)<CR>", { silent = true })
vim.api.nvim_set_keymap('s', '<S-Tab>', "<cmd>lua require('luasnip').jump(-1)<CR>", { silent = true })
ls.config.set_config({
    history = true, -- keep around last snippet local to jump back
    enable_autosnippets = true,})
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/after/snippets/"})

