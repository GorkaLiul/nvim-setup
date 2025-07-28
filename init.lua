require("liul")
require("liul.config.lazy")

vim.opt.termguicolors = false
vim.cmd[[colorscheme gruvbox ]]
--
-- CONFIGURANDO EL FONDO NEGRO
--vim.opt.background = "dark"         
--vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")  -- Elimina el fondo (transparente)
--vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE") -- También para ventanas no activas

vim.wo.number = true
vim.wo.relativenumber = true

function ColorMyPencils(color)
	vim.cmd.colorscheme("gruvbox")

--vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils()




