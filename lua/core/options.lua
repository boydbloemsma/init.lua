local opts = {
    nu = true,
    relativenumber = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    wrap = false,
    hlsearch = false,
    incsearch = true,
    termguicolors = true,
    scrolloff = 8,
    signcolumn = "yes",
    updatetime = 50,
    colorcolumn = "120",
    -- background = 'light',
    mouse = '',
    ignorecase = true,
}

for opt, val in pairs(opts) do
    vim.o[opt] = val
end

vim.opt.isfname:append("@-@")

-- netrw
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

local colorscheme = require('helpers.colorscheme')
vim.cmd.colorscheme(colorscheme)
