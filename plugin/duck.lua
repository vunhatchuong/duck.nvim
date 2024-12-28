local Command = require("duck.command")

vim.api.nvim_create_user_command("Duck", function(opts)
    Command.load_command(unpack(opts.fargs))
end, {
    nargs = "*",
    complete = Command.complete,
})
