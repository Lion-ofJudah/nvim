require("lion.config.options")
require("lion.core.lazy")

-- colorscheme
require("current-theme")

require("lion.config.keymaps")

-- configure highlight groups
require("lion.config.highlights").setup()
require("lion.config.autocmds")
