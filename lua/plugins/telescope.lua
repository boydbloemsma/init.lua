return {
	{
		"nvim-telescope/telescope.nvim",
        tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            vim.keymap.set("n", "<leader>fr", require("telescope.builtin").oldfiles, {})
            vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, {})
            vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
            vim.keymap.set("n", "<leader>fg", require("telescope.builtin").git_files, {})
            vim.keymap.set("n", "<leader>fw",  function ()
                require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ")})
            end)
        end,
	}
}
