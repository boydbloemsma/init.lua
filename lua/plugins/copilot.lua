return {
    {
        "zbirenbaum/copilot.lua",
        cmd = 'Copilot',
        event = "InsertEnter",
        opts = {
            suggestion = {
                enabled = false,
            },
            panel = {
                enabled = false,
            },
        },
        cond = function ()
            -- Only load copilot on windows
            return vim.fn.has('win32') == 1
        end
    },
    {
        "zbirenbaum/copilot-cmp",
        event = "InsertEnter",
        opts = {},
        cond = function ()
            -- Only load copilot on windows
            return vim.fn.has('win32') == 1
        end
    },
}
