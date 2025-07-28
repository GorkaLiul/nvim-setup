require("liul")
require("liul.config.lazy")
print("hello")

<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
vim.opt.termguicolors = false
vim.cmd[[colorscheme gruvbox ]]
--
>>>>>>> ae6d551 (fixed some stuff)
>>>>>>> 3c6b0e5 (minor changes)
=======
>>>>>>> cc0269b92b22622bf1aeeb5019b1bb7aa2d3d342
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




