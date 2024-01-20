return {
    {
      "smjonas/inc-rename.nvim",
      cmd = "IncRename",
      config = true,
    },
    "tpope/vim-sleuth",
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                icons_enabled = false,
                theme = 'gruvbox',
                component_separators = '|',
                section_separators = '',
            }
        }
    }
}
