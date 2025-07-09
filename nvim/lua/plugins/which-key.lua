return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({
      preset = "helix",
    })
    wk.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>c", group = "Code" },
      { "<leader>f", group = "Find" },
      { "<leader>n", group = "Notification" },
      { "<leader>l", group = "LSP" },
    })
  end,
  -- keys = {
  --   {
  --     "<leader>?",
  --     function()
  --       require("which-key").show({ global = true })
  --     end,
  --     desc = "Buffer Local Keymaps",
  --   },
  -- },
}
