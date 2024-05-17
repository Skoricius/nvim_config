if vim.g.vscode == nil then
    require('dap-python').setup()
    vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end)
    vim.keymap.set('n', '<leader>dt', function() require('dap').terminate() end)
    vim.keymap.set('n', '<leader>dR', function() require('dap').restart() end)
    vim.keymap.set('n', '<leader>dt', function() require('dap').terminate() end)
    vim.keymap.set('n', '<leader>dn', function() require('dap').step_over() end)
    vim.keymap.set('n', '<leader>di', function() require('dap').step_into() end)
    vim.keymap.set('n', '<leader>do', function() require('dap').step_out() end)
    vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
    vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
    vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.toggle() end)
    vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end)
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)
    vim.fn.sign_define('DapBreakpoint', {text='🟠', texthl='', linehl='', numhl=''})

    vim.keymap.set('n', '<leader>du', require('dapui').toggle)
end
