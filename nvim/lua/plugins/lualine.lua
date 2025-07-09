return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'tokyonight'
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {}, -- normally contains system info or encoding
        lualine_y = {}, -- normally contains debugger info
        lualine_z = {'location'}, -- keep this if you want cursor position
      },
    })
  end,
}
