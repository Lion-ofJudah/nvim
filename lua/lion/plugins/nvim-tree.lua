return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    view = {
      width = 38,
    },
    renderer = {
      root_folder_label = function(path)
        return " " .. vim.fn.fnamemodify(path, ":t") .. "/.."
      end,
      highlight_git = true,
      highlight_diagnostics = true,
      special_files = {},
      add_trailing = true,
      symlink_destination = false,
      indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          corner = " ",
          edge = " ",
          item = " ",
          bottom = " ",
          none = "│",
        }
      },
      icons = {
        git_placement = "right_align",
        glyphs = {
          git = { 
            unstaged = "M",
            staged = "S",
            unmerged = "",
            renamed = "",
            untracked = "U",
            deleted = "",
            ignored = "◌",
          }, 
        },
      },
    },
    filters = {
        enable = true,
        git_ignored = false, -- change value to false to display .gitignore files
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        no_bookmark = false,
        custom = { "^.git$" },
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
