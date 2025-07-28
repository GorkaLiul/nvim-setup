-- ~/.config/nvim/lua/liul/plugins/treesitter.lua

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "lua", "python", "rust", "bash", "javascript", "html", "css", "json", "markdown", "ron"
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    }
  end
}

