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

print("Loged in")

