require("liul")
require("liul.config.lazy")
print("hello")

-- CONFIGURANDO EL FONDO NEGRO
--vim.opt.background = "dark"         
--vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")  -- Elimina el fondo (transparente)
--vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE") -- También para ventanas no activas

vim.wo.number = true
vim.wo.relativenumber = true

function ColorMyPencils(color)
	color = "catppuccin"-- color -- or "catppuccin"  
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

--ColorMyPencils()




