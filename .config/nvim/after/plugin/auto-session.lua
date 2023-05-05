local opts = {
  log_level = 'info',
  auto_session_enable_last_session = true,
  auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = true,
  auto_session_suppress_dirs = nil,
  auto_session_use_git_branch = nil,
}

vim.keymap.set('n', '<leader>hf', '<cmd>Telescope session-lens search_session<cr>', {})
vim.keymap.set('n', '<leader>hs', '<cmd>SaveSession<cr>', {})
vim.keymap.set('n', '<leader>hx', '<cmd>DeleteSession<cr>', {})
vim.keymap.set('n', '<leader>hr', '<cmd>RestoreSession<cr>', {})
vim.keymap.set('n', '<leader>hd', '<cmd>Autosession delete<cr>', {})
require('auto-session').setup(opts)
