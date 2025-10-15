require 'plugins.lazy'

local function without_ext(path)
    local i = path:find('.', 1, true)
    if not i then
        return path
    end
    return path:sub(0, i-1)
end

for _, it in ipairs(require('lazy').plugins()) do
    local name = without_ext(it.name)
    local package = 'plugins.' .. name

    pcall(require, package)
end

--Godot exclusive
local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
if gdproject then
    io.close(gdproject)
    vim.fn.serverstart '/tmp/godot.pipe'
    print("listening on godot pipe!")
end

require 'lsp'
require 'core.settings'
require 'core.keymaps'

