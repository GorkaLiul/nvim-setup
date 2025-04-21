return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
		require("lualine").setup({
  options = {
    theme = "catppuccin",
    icons_enabled = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_d = { "" },
    lualine_w = {"lsp_status"},
    lualine_x = {
      "encoding",
      "fileformat",
      "filetype",
      {
        function()
          return os.date("%H:%M")
        end,
        icon = "",
        padding = { left = 1, right = 1 },
      },
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
	end
}

