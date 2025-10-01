local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  }
}

M.vimtex = {
  plugin = true,
  n = {
    ["<leader>cc"] = { "<cmd> VimtexCompile <CR>", "Compile LaTeX document" },
    ["<leader>cv"] = { "<cmd> VimtexView <CR>", "View compiled document" },
    ["<leader>cq"] = { "<cmd> VimtexStop <CR>", "Stop compilation" },
  }
}

M.copilot = {
  i = {
    ["<C-x>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
      }
  }
}

return M
