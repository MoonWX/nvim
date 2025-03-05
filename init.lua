-- Thanks to kickstart.nvim. The repository is at: https://github.com/nvim-lua/kickstart.nvim/

-- Import global options of vim
require("core.global")

-- Import options of vim
require("core.options")

-- Import lazy.nvim which is a plugin manager
require("config.lazy")

-- Load plugins
require("load")