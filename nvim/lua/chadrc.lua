-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  transparency = true
	-- theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = {
  load_on_startup = true,
  header = {
  "                            ",
  "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
  "   ▄▀███▄     ▄██ █████▀    ",
  "   ██▄▀███▄   ███           ",
  "   ███  ▀███▄ ███           ",
  "   ███    ▀██ ███           ",
  "   ███      ▀ ███           ",
  "   ▀██ █████▄▀█▀▄██████▄    ",
  "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
  "                            ",
  "      t.me/kartaviykun      ",
  "                            ",
  },

  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Config Directory", keys = "cd", cmd = "cd ~/.config/ | NvimTreeToggle" },
    { txt = "  Neovim config", keys = "nc", cmd = "cd ~/.config/nvim/ | NvimTreeToggle" },
    { txt = "  My git repos", keys = "mg", cmd = "cd ~/git/my-repos/ | NvimTreeToggle" },
    -- { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

    -- {
    --   txt = "Ты кто? Ты где? Ты чмо в дерьме",
    --   hl = "NvDashFooter",
    --   no_gap = true,
    -- },
    {
      txt = "Я хороший boy, man из Урала",
      hl = "NvDashFooter",
      no_gap = true,
    },
    {
      txt = "Твоя мама пенис мой замарала",
      hl = "NvDashFooter",
      no_gap = true,
    },
    {
      txt = "© Artem 1.Kla$ Frank",
      hl = "NvDashFooter",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
