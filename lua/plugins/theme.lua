local jjk = {
  blue = "#36c6ff",
  blue_deep = "#1d8fff",
  blue_light = "#7fdbff",
  cyan = "#53e3fb",
  purple = "#a855f7",
  purple_light = "#c084fc",
  purple_deep = "#9333ea",
  red = "#ff4757",
  red_deep = "#e11d48",
  orange = "#ff7a45",
  teal = "#2dd4bf",
  comment = "#5c5c8a",
  void = "#0b0b14",
  void_light = "#16162a",
  selection = "#2a1b4a",
  text = "#c8d3f5",
}

return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(c)
        c.blue = jjk.blue
        c.blue0 = jjk.blue_deep
        c.blue1 = jjk.blue_light
        c.cyan = jjk.cyan
        c.purple = jjk.purple
        c.magenta = jjk.purple_light
        c.magenta2 = jjk.purple_deep
        c.red = jjk.red
        c.red1 = jjk.red_deep
        c.orange = jjk.orange
        c.green = jjk.teal
        c.comment = jjk.comment
        c.border_highlight = jjk.purple
      end,
      on_highlights = function(hl, c)
        hl.CursorLineNr = { fg = jjk.purple, bold = true }
        hl.LineNr = { fg = "#3b3b5c" }
        hl.Visual = { bg = jjk.selection }
        hl.Search = { bg = jjk.purple_deep, fg = "#ffffff" }
        hl.IncSearch = { bg = jjk.red, fg = "#ffffff" }
        hl.MatchParen = { fg = jjk.red, bold = true }
        hl.WinSeparator = { fg = jjk.selection }
        hl.FloatBorder = { fg = jjk.purple }

        hl.DiagnosticError = { fg = jjk.red }
        hl.DiagnosticWarn = { fg = jjk.orange }
        hl.DiagnosticInfo = { fg = jjk.blue }
        hl.DiagnosticHint = { fg = jjk.purple_light }

        hl.GitSignsAdd = { fg = jjk.teal }
        hl.GitSignsChange = { fg = jjk.blue }
        hl.GitSignsDelete = { fg = jjk.red }

        hl.SnacksDashboardHeader = { fg = jjk.purple }
        hl.SnacksDashboardDesc = { fg = jjk.blue }
        hl.SnacksDashboardIcon = { fg = jjk.blue }
        hl.SnacksDashboardKey = { fg = jjk.red }
        hl.SnacksDashboardFooter = { fg = jjk.comment }
        hl.SnacksIndentScope = { fg = jjk.purple }
        hl.SnacksPickerBorder = { fg = jjk.purple }

        hl.WhichKeyBorder = { fg = jjk.purple }
        hl.NoiceCmdlinePopupBorder = { fg = jjk.purple }

        hl.Directory = { fg = jjk.purple, bold = true }
        hl.SnacksPickerDirectory = { fg = jjk.purple, bold = true }
        hl.SnacksPickerDir = { fg = jjk.comment }
      end,
    },
  },
  {
    "nvim-mini/mini.icons",
    opts = {
      default = {
        directory = { hl = "Directory" },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function mode(color)
        return {
          a = { bg = color, fg = jjk.void, gui = "bold" },
          b = { bg = jjk.void_light, fg = color },
          c = { bg = "none", fg = jjk.text },
        }
      end
      opts.options.theme = {
        normal = mode(jjk.blue),
        insert = mode(jjk.teal),
        visual = mode(jjk.purple),
        replace = mode(jjk.red),
        command = mode(jjk.orange),
        terminal = mode(jjk.cyan),
        inactive = {
          a = { bg = "none", fg = jjk.comment },
          b = { bg = "none", fg = jjk.comment },
          c = { bg = "none", fg = jjk.comment },
        },
      }
    end,
  },
}
