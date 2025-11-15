---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula-evondev",
  transparency = true,
}

-- M.mappings = require("mappings")

vim.cmd([=[
  highlight Visual guibg=#464646 guifg=NONE
]=])

return M