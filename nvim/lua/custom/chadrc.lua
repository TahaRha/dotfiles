---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'gatekeeper',
  transparency = true
}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

vim.cmd([[
  highlight Visual guibg=#464646 guifg=NONE
]])

return M
