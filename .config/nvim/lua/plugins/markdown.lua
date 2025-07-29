return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  config = function()
    require("render-markdown").setup({
      completions = { lsp = { enable = true } },
      heading = { left_pad = 1, border = true },
      quote = { left_margin = 2, },
      latex = {
        enabled = true,
        render_modes = false,
        converter = 'latex2text',
        highlight = 'RenderMarkdownMath',
        position = 'above',
        top_pad = 0,
        bottom_pad = 0,
      }
    })
  end,
  ft = "markdown",
}
