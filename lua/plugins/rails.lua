return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          init_options = {
            enabledFeatureFlags = { all = true },
          },
        },
        rubocop = { mason = false },
      },
    },
  },
  { "tpope/vim-rails" },
  { "tpope/vim-bundler" },
  {
    "saghen/blink.cmp",
    dependencies = { "mikavilpas/blink-ripgrep.nvim" },
    opts = {
      signature = { enabled = true },
      completion = {
        documentation = { auto_show_delay_ms = 50 },
      },
      sources = {
        default = { "ripgrep" },
        providers = {
          lsp = { fallbacks = {} },
          ripgrep = {
            module = "blink-ripgrep",
            name = "RG",
            score_offset = -5,
            opts = { prefix_min_len = 3 },
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ruby", "embedded_template", "html" })
      end
      opts.indent = opts.indent or {}
      opts.indent.disable = opts.indent.disable or {}
      table.insert(opts.indent.disable, "ruby")
    end,
  },
}
