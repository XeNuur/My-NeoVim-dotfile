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

require 'lsp'
require 'core.settings'
require 'core.keymaps'

