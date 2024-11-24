return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require("mini.animate").setup({
    })

    -- slow...not good
    require("mini.surround").setup({
    })
  end
}
