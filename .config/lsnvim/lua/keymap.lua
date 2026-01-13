vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Select all
vim.keymap.set('n', '<C-A>', 'gg<S-v>G')

-- Always center
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- Easier access to beginning and end of line
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

-- Comment line, _ has to be used or / ... took a while to find out
vim.keymap.set('n', '<C-_>', ':normal gcc<CR>')
vim.keymap.set('v', '<C-_>', ':normal gcc<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Reload config
vim.keymap.set('n', '<leader>rc', function()
  vim.cmd.source(vim.fn.expand('%'))
end, { desc = '[R]eload Nvim [C]onfig' })

-- Open Oil
vim.keymap.set("n", "<leader>-", "<cmd>Oil<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})


-- Test how to remove ^M
local function trim()
  local save = vim.fn.winsaveview()
  vim.cmd("keeppatterns %s/\\s\\+$\\|\\r$//e")
  vim.fn.winrestview(save)
end

vim.keymap.set('n', '<leader>rw', trim, { desc = 'T[R]im [W]hitespace ^M' })

