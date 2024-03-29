-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--INDENTATION
--
-- Tabs insead of spaces
vim.opt.expandtab = false
-- Keep indentation level with word wrap
vim.opt.breakindent = true

--
-- PERFORMANCE
--
-- Allow terminals to run in background
vim.opt.hidden = true
-- Don't create these files
vim.opt.backup = false
vim.opt.swapfile = false
-- Decrease update time
vim.opt.updatetime = 150
vim.opt.timeout = true
vim.opt.timeoutlen = 300

--
-- OTHER
--
vim.opt.conceallevel = 0
-- Highlight matches on search
vim.opt.hlsearch = false
vim.opt.backupcopy = "auto"
