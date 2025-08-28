-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--lsp section
vim.lsp.enable("pyrefly")

-- Auto-enable spell checking for certain filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit", "latex" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "ms", "en_us" }
  end,
})

--smear cursor config
-- require("smear_cursor").setup({
--   cursor_color = "#FFFFFF",
--   stiffness = 0.8,
--   trailing_stiffness = 0.5,
--   distance_stop_animating = 0.5,
-- })

--this is for the md header
require("render-markdown").setup({
  heading = {
    width = "block",
    left_pad = 2,
    right_pad = 4,
  },
})
