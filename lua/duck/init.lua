local duck = require("duck.duck")

local M = {}

M.setup = function(opts)
    duck.conf = vim.tbl_deep_extend("force", duck.conf, opts or {})
end

return M
