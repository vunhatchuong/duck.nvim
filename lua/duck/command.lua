local duck = require("duck.duck")

local M = {}

--- @param cmd string
--- @param ... any
---@return nil
function M.load_command(cmd, ...)
    if cmd == nil then
        duck.hatch()
        return
    end

    if cmd == "hatch" then
        duck.hatch(...)
    elseif cmd == "cook" then
        duck.cook()
    elseif cmd == "cook_all" then
        duck.cook_all()
    end
end

--- @param cmd string
--- @return string[]
function M.complete(cmd)
    local options = { "hatch", "cook", "cook_all" }
    local matches = {}

    for i = 1, #options do
        if options[i]:sub(1, #cmd) == cmd then
            matches[#matches + 1] = options[i]
        end
    end

    return matches
end

return M
