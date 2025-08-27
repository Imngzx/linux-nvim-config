-- Location: lua/plugins/lualine.lua (or wherever you have it)
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")

      -- keep pretty path
      opts.sections.lualine_c[4] = {
        LazyVim.lualine.pretty_path({
          length = 0,
          relative = "cwd",
          modified_hl = "MatchParen",
          directory_hl = "",
          filename_hl = "Bold",
          modified_sign = "",
          readonly_icon = " 󰌾 ",
        }),
      }

      -- show filetype in lualine_x
      opts.sections.lualine_x = {
        "macro-recording", -- ✅ ADD THIS LINE
        "filetype",
        {
          "fileformat",
          icons_enabled = true,
        },
        {
          "encoding",
          icons_enabled = false,
        },
      }

      -- show date + 12-hour clock in lualine_z
      opts.sections.lualine_z = {
        function()
          local time = os.date("*t")
          local hour = time.hour
          local suffix = "AM"
          if hour >= 12 then
            suffix = "PM"
            if hour > 12 then
              hour = hour - 12
            end
          elseif hour == 0 then
            hour = 12
          end
          local clock = string.format("%02d:%02d %s", hour, time.min, suffix)
          local date = os.date("%d-%m-%Y") -- format: DD-MM-YYYY
          return date .. " | " .. clock
        end,
      }
    end,
  },
}
