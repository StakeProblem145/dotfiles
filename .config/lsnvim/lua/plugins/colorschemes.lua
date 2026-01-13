return {
  {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  cond = function()
    return not vim.g.vscode
  end,
  config = function()
    require('catppuccin').setup {
      styles = {
        comments = { "italic" },
      },
      auto_integrations = true,
    }
    vim.cmd.colorscheme 'catppuccin-macchiato'
  end,
},
}
