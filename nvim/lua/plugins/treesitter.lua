return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "markdown",
        "markdown_inline",
        "odin",
      },
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
