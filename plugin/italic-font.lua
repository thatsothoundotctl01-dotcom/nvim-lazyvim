return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("NoItalics", { clear = true }),
        callback = function()
          local highlights = vim.api.nvim_get_hl(0, {})
          for name, hl in pairs(highlights) do
            if hl.italic then
              hl.italic = false
              vim.api.nvim_set_hl(0, name, hl)
            end
          end
        end,
      })
    end,
  },
}

