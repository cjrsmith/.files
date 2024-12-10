return {
    'mfussenegger/nvim-dap',
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        'mfussenegger/nvim-dap-python'
    },
    config = function()
        local dap = require('dap')
        local dapui = require("dapui")
        local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3"
        require('dapui').setup()
        require('dap-python').setup(path)
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
        vim.keymap.set('n', '<leader>co', function() dap.continue() end)
        vim.keymap.set('n', '<leader>ov', function() require('dap').step_over() end)
        vim.keymap.set('n', '<leader>in', function() require('dap').step_into() end)
        vim.keymap.set('n', '<leader>ou', function() require('dap').step_out() end)
        vim.keymap.set('n', '<leader>st', function() require('dap').terminate() end)
        vim.keymap.set('n', '<leader>dt', function() dap.toggle_breakpoint() end)
        vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
            require('dap.ui.widgets').hdover()
        end)
        vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
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
    end
}
