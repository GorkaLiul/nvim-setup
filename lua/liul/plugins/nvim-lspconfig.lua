return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.rust_analyzer.setup({
      settings = {
        ["rust-analyzer"] = {
	enabled = true,
          cargo = { allFeatures = true },
          checkOnSave = { command = "clippy" },
        }
      }
    })

    -- puedes añadir más lenguajes aquí si quieres
  end
}

