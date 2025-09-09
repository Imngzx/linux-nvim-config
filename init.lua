-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--NOTE: this is for remove space after save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
})

--NOTE: Auto-enable spell checking for certain filetypes (useful for md files)
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

--NOTE:   if you use neovide
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Mono:h14:b" -- Replace h14 with your desired font size
end
