-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.vimcommands")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs", -- cs is the filetype for C#
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
