_G.RUNNER_MODE = 1 --NOTE: toggle here to switch between float or newtab mode

-- helper function to get mode
local function get_mode()
  if RUNNER_MODE == 1 then
    return "float"
  elseif RUNNER_MODE == 2 then
    return "tab"
  elseif RUNNER_MODE == 3 then
    return "term"
  else
    return "float"
  end
end

return {
  "CRAG666/code_runner.nvim",
  main = "code_runner",
  cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
  opts = function()
    return {
      mode = get_mode(), -- toggle mode
      focus = true,
      startinsert = true,
      term = { position = "bot", size = 20 },
      float = {
        border = "rounded",
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,
        border_hl = "FloatBorder",
        float_hl = "Normal",
        blend = 0,
      },
      filetype = {
        c = {
          "cd $dir &&",
          "mkdir -p out &&",
          "gcc -Wall -Wextra -O2 -o out/$fileNameWithoutExt $fileName -lm &&",
          "./out/$fileNameWithoutExt",
        },
        cpp = {
          "cd $dir &&",
          "mkdir -p out &&",
          "g++ -std=c++23 -Wall -Wextra -O2 -o out/$fileNameWithoutExt $fileName -lm &&",
          "./out/$fileNameWithoutExt",
        },
        python = {
          "cd $dir &&",
          "python3 -u $fileName",
        },
      },
    }
  end,
  keys = {
    { "<F5>",       "<cmd>w<CR><cmd>RunCode<CR>", desc = "Save and Run Code" },
    { "<S-F5>",     "<cmd>RunClose<CR>",          desc = "Stop Running" },
    { "<C-F5>",     "<cmd>w<CR><cmd>RunFile<CR>", desc = "Save and Run File" },
    { "<leader>rc", "<cmd>w<CR><cmd>RunCode<CR>", desc = "Save and Run Code" },
    { "<leader>rf", "<cmd>w<CR><cmd>RunFile<CR>", desc = "Save and Run File" },
    { "<leader>rp", "<cmd>RunProject<CR>",        desc = "Run Project" },
    { "<leader>rx", "<cmd>RunClose<CR>",          desc = "Close Runner" },
  },
}
