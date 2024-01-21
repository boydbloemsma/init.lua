return {
	{
		"nvim-telescope/telescope.nvim",
        tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
            vim.keymap.set("n", "<leader>fcw", builtin.grep_string, {})
            vim.keymap.set("n", "<leader>fw",  function ()
                builtin.grep_string({ search = vim.fn.input("Grep > ")})
            end)
        end,
	}
}
