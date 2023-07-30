local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "lua", "vim", "vimdoc", "javascript", "html", "php", "query" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	},
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	"neovim/nvim-lspconfig",
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	"lewis6991/gitsigns.nvim",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	"NvChad/nvim-colorizer.lua",
})

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "marksman" }
})
require"lspconfig".marksman.setup{}

require("gitsigns").setup()

vim.cmd.colorscheme "catppuccin-latte"
