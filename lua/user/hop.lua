local ststus_ok, hop = pcall(require, "hop")
if ststus_ok then
	return
end

hop.setup()
vim.api.nvim_set_keymap("", "s", ":HopChar2<cr>", { silent = true })
vim.api.nvim_set_keymap("", "S", ":HopWord<cr>", { silent = true })
