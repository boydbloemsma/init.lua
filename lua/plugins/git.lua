return {
	{
        "lewis6991/gitsigns.nvim",
        config = function ()
            require("gitsigns").setup({
                signs = {
                    add = { text = 'A' },
                    change = { text = 'M' },
                    delete = { text = 'D' },
                    topdelete = { text = 'TD' },
                    changedelete = { text = 'CD' },
                    untracked = { text = 'U' },
                },
                numhl = true,
            })
        end
    },
    "tpope/vim-fugitive",
}
