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

require("lazy").setup("plugins")

require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "marksman", "intelephense" }
})

require"lspconfig".marksman.setup{}
require"lspconfig".intelephense.setup{}

require("gitsigns").setup()

vim.cmd.colorscheme "catppuccin"
