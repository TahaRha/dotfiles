require "nvchad.mappings"

local map = vim.keymap.set

-- DAP
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })

-- Vimtex
map("n", "<leader>cc", "<cmd> VimtexCompile <CR>", { desc = "Compile LaTeX document" })
map("n", "<leader>cv", "<cmd> VimtexView <CR>", { desc = "View compiled document" })
map("n", "<leader>cq", "<cmd> VimtexStop <CR>", { desc = "Stop compilation" })

-- Copilot
map("i", "<C-x>", function() vim.fn.feedkeys(vim.fn['copilot#Accept'](), '') end, { desc = "Copilot Accept", replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true })