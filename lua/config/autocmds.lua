-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

if vim.g.neovide then
  -- Set your preferred font name and size (e.g., size 16)
  vim.o.guifont = "JetBrainsMono Nerd Font:h16"

  -- Sets the overall window transparency (0.0 is completely see-through, 1.0 is opaque)
  vim.g.neovide_opacity = 0.8

  -- Sets the opacity specifically for the default editor background
  vim.g.neovide_normal_opacity = 0.8

  -- Optional: Adds a blur effect behind the window (Supported on macOS and some Linux compositors)
  vim.g.neovide_window_blurred = true

  -- Enable background blurring for floating popups (makes text readable)
  vim.g.neovide_window_blurred = true

  -- 2. Dictates how fast sidebars and snacks popups slide/resize (0.15s is ideal)
  -- vim.g.neovide_position_animation_length = 0.15

  -- 3. Attaches clean 3D shadows underneath snacks floating popups
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 12
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 4

  -- Change this line inside hacks.lua:
  vim.api.nvim__redraw({ flush = true, cursor = false })

  -- Sets the cursor animation length in seconds (0.13 is the default)
  vim.g.neovide_cursor_animation_length = 0.15
  vim.g.neovide_cursor_vfx_particle_density = 14.0
end
