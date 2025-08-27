-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.lsp.enable("pyrefly")
vim.lsp.enable("clangd")

require("smear_cursor").setup({
  cursor_color = "#FFFFFF",
  stiffness = 0.8,
  trailing_stiffness = 0.5,
  distance_stop_animating = 0.5,
})
