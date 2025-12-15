return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      custom_filter = function (buf_number, buf_numbers)
        local name = vim.api.nvim_buf_get_name(buf_number)

        if name == "" then
          return false
        end

        return true
      end,
      offsets = {
        {
          filetype = "NvimTree",
          text = "      エクスプローラー",
          text_align = "left",
          separator = true,
        },
      },
    },
  },
  config = function (_, opts)
    require("bufferline").setup(opts)
  end
}
