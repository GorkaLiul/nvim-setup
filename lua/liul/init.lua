require("liul.plugins")
require("liul.remap")
require("liul.remap_rust")
require("liul.config.lazy")
require("liul.config.options")


-- Thao (Ascii)
local ascii_file = vim.fn.stdpath("config") .. "/Thao.txt"
local file = io.open(ascii_file, "r")
if file then
	for line in file:lines() do
		print(line)
end
	file:close()
end

<<<<<<< HEAD
<<<<<<< HEAD

print("hello from Liul! love you Thao <3")
print("Se amable con chatGPT! Pide las cosas por favor!!")
=======
<<<<<<< HEAD

print("hello from Liul! love you Thao <3")
print("Se amable con chatGPT! Pide las cosas por favor!!")
=======
>>>>>>> ae6d551 (fixed some stuff)
>>>>>>> 3c6b0e5 (minor changes)
=======

print("hello from Liul! love you Thao <3")
print("Se amable con chatGPT! Pide las cosas por favor!!")
>>>>>>> cc0269b92b22622bf1aeeb5019b1bb7aa2d3d342
