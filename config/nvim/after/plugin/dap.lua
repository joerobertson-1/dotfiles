require('telescope').load_extension('dap')
require("nvim-dap-virtual-text").setup()
require("dapui").setup()

-- Basic DAP Keymaps
vim.keymap.set('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>')
vim.keymap.set('n', '<leader>ds', '<cmd>lua require"dap".step_over()<CR>')
vim.keymap.set('n', '<leader>di', '<cmd>lua require"dap".step_into()<CR>')
vim.keymap.set('n', '<leader>do', '<cmd>lua require"dap".step_out()<CR>')
vim.keymap.set('n', '<leader>db', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<leader>dx', '<cmd>lua require"dap".clear_breakpoints()<CR>')
vim.keymap.set('n', '<leader>drc', '<cmd>lua require"dap".run_to_cursor()<CR>')

-- DAP UI
vim.keymap.set('n', '<leader>du', '<cmd>lua require"dapui".toggle()<CR>')
vim.keymap.set('n', '<leader>dre', '<cmd>lua require"dapui".float_element("repl")<CR>')

-- DAP Telescope Integration
vim.keymap.set('n', '<leader>dlc', '<cmd>lua require"telescope".extensions.dap.commands{}<CR>')
vim.keymap.set('n', '<leader>dlb', '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>')
vim.keymap.set('n', '<leader>dlv', '<cmd>lua require"telescope".extensions.dap.variables{}<CR>')


local DEBUGGER_PATH = vim.fn.stdpath "data" .. "/site/pack/packer/opt/vscode-js-debug"

require("dap-vscode-js").setup {
  node_path = "node",
  debugger_path = DEBUGGER_PATH,
  -- debugger_cmd = { "js-debug-adapter" },
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },   -- which adapters to register in nvim-dap
}

for _, language in ipairs { "typescript", "javascript" } do
  require("dap").configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "../node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
  }
end
