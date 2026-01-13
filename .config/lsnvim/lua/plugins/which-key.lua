return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      delay = 0,
      spec = {
        { '<leader>s', group = '[S]earch' },
        { '<leader>f', group = '[F]iles' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      },
      preset = 'helix',
      plugins = {
        presets = {
          operators = false,
          motions = false
        }
      }
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
