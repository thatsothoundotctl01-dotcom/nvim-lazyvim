-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")


vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local hl_groups = vim.api.nvim_get_hl(0, {})
    for key, hl in pairs(hl_groups) do
      if hl.italic then
        vim.api.nvim_set_hl(0, key, vim.tbl_extend("force", hl, { italic = false }))
      end
    end
  end,
})
autocmds 
