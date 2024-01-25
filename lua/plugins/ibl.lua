return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        scope = {
            enabled = false,
        }
    },
    cond = function ()
        -- Only load indent-blankline on macos
        return vim.fn.has('win32') == 0
    end
}
