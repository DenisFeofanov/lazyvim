return {
  "keaising/im-select.nvim",
  config = function()
    require("im_select").setup({
      default_command = "fcitx5-remote",
    })
  end,
}
