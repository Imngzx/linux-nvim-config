return {
  -- "craftzdog/solarized-osaka.nvim",
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
    }
  end,
}
