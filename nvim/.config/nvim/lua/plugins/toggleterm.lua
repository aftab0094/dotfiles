return {
    'akinsho/toggleterm.nvim',
    cmd = "ToggleTerm",
    version = "*",
    opts = {--[[ things you want to change go here]]},
    config = function()
        require("toggleterm").setup{
        }
    end
}
