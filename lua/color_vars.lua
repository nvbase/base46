local opts = require("nvconfig").base46
local str = ""

local present, colors = pcall(require, "base46.themes." .. opts.theme)

if present then
	for name, hex in pairs(colors.base_30) do
		str = str .. name .. "='" .. hex
		str = str .. "',"
	end

	str = "return {" .. str .. "}"
end

return str
