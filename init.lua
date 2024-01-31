local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- PLUGINS

require("vim")
require("lazy").setup("plugins")
-- TELESCOPE CONFIG
-- NEO TREE CONFIG
-- TREE SITTER CONFIG
-- remember; w for next word, b for back one word.
-- useful; if you've just navigated somewhere, ctrl+o takes you back.
-- :help jump-motions



