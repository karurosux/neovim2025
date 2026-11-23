return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
██████╗  ███████╗ ██╗   ██╗ ██╗   ██╗ ████████╗ ███████╗ ██╗   ██╗
██╔══██╗ ██╔════╝ ██║   ██║ ██║   ██║ ╚══██╔══╝ ██╔════╝ ██║   ██║
██║  ██║ █████╗   ██║   ██║ ██║   ██║    ██║    ███████╗ ██║   ██║
██║  ██║ ██╔══╝   ╚██╗ ██╔╝ ██║   ██║    ██║    ╚════██║ ██║   ██║
██████╔╝ ███████╗  ╚████╔╝  ╚██████╔╝    ██║    ███████║ ╚██████╔╝
╚═════╝  ╚══════╝   ╚═══╝    ╚═════╝     ╚═╝    ╚══════╝  ╚═════╝ 
                                                                  
        ██╗  ██╗  █████╗  ██╗ ███████╗ ███████╗ ███╗   ██╗        
        ██║ ██╔╝ ██╔══██╗ ██║ ██╔════╝ ██╔════╝ ████╗  ██║        
        █████╔╝  ███████║ ██║ ███████╗ █████╗   ██╔██╗ ██║        
        ██╔═██╗  ██╔══██║ ██║ ╚════██║ ██╔══╝   ██║╚██╗██║        
        ██║  ██╗ ██║  ██║ ██║ ███████║ ███████╗ ██║ ╚████║        
        ╚═╝  ╚═╝ ╚═╝  ╚═╝ ╚═╝ ╚══════╝ ╚══════╝ ╚═╝  ╚═══╝        
                                                                  
   (⌐■_■)                                          (ﾉ◕ヮ◕)ﾉ        
   the geekest dev of all time    ⚔    the geekest dev of today   
   wrote the kernel in ed              has 400 neovim plugins     
                                                                  
              "would you lose?"                                   
                           "nah, i'd :wq!"                        ]],
      },
    },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
